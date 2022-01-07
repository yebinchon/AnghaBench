
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct urb {unsigned int pipe; int interval; int complete; struct snd_usX2Y_substream* context; int number_of_packets; struct usb_device* dev; int * transfer_buffer; } ;
struct snd_usX2Y_substream {int maxpacksize; struct urb** urb; int * tmpbuf; int endpoint; TYPE_1__* usX2Y; } ;
struct TYPE_2__ {struct usb_device* dev; struct snd_usX2Y_substream** subs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NRURBS ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int i_usX2Y_subs_startup ;
 int * kcalloc (int ,int ,int ) ;
 int * kmalloc_array (int ,int ,int ) ;
 int nr_of_packs () ;
 int usX2Y_urbs_release (struct snd_usX2Y_substream*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_kill_urb (struct urb*) ;
 int usb_maxpacket (struct usb_device*,unsigned int,int) ;
 unsigned int usb_rcvisocpipe (struct usb_device*,int ) ;
 unsigned int usb_sndisocpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usX2Y_urbs_allocate(struct snd_usX2Y_substream *subs)
{
 int i;
 unsigned int pipe;
 int is_playback = subs == subs->usX2Y->subs[SNDRV_PCM_STREAM_PLAYBACK];
 struct usb_device *dev = subs->usX2Y->dev;

 pipe = is_playback ? usb_sndisocpipe(dev, subs->endpoint) :
   usb_rcvisocpipe(dev, subs->endpoint);
 subs->maxpacksize = usb_maxpacket(dev, pipe, is_playback);
 if (!subs->maxpacksize)
  return -EINVAL;

 if (is_playback && ((void*)0) == subs->tmpbuf) {
  subs->tmpbuf = kcalloc(nr_of_packs(), subs->maxpacksize, GFP_KERNEL);
  if (!subs->tmpbuf)
   return -ENOMEM;
 }

 for (i = 0; i < NRURBS; i++) {
  struct urb **purb = subs->urb + i;
  if (*purb) {
   usb_kill_urb(*purb);
   continue;
  }
  *purb = usb_alloc_urb(nr_of_packs(), GFP_KERNEL);
  if (((void*)0) == *purb) {
   usX2Y_urbs_release(subs);
   return -ENOMEM;
  }
  if (!is_playback && !(*purb)->transfer_buffer) {

   (*purb)->transfer_buffer =
    kmalloc_array(subs->maxpacksize,
           nr_of_packs(), GFP_KERNEL);
   if (((void*)0) == (*purb)->transfer_buffer) {
    usX2Y_urbs_release(subs);
    return -ENOMEM;
   }
  }
  (*purb)->dev = dev;
  (*purb)->pipe = pipe;
  (*purb)->number_of_packets = nr_of_packs();
  (*purb)->context = subs;
  (*purb)->interval = 1;
  (*purb)->complete = i_usX2Y_subs_startup;
 }
 return 0;
}
