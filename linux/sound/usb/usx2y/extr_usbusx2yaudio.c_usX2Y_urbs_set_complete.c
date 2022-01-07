
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usX2Ydev {struct snd_usX2Y_substream** subs; } ;
struct urb {void (* complete ) (struct urb*) ;} ;
struct snd_usX2Y_substream {struct urb** urb; } ;


 int NRURBS ;

__attribute__((used)) static void usX2Y_urbs_set_complete(struct usX2Ydev * usX2Y,
        void (*complete)(struct urb *))
{
 int s, u;
 for (s = 0; s < 4; s++) {
  struct snd_usX2Y_substream *subs = usX2Y->subs[s];
  if (((void*)0) != subs)
   for (u = 0; u < NRURBS; u++) {
    struct urb * urb = subs->urb[u];
    if (((void*)0) != urb)
     urb->complete = complete;
   }
 }
}
