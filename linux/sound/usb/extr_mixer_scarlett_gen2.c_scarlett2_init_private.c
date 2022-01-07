
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int private_suspend; int private_free; struct scarlett2_mixer_data* private_data; } ;
struct scarlett2_mixer_data {int mux; struct usb_mixer_interface* mixer; scalar_t__ scarlett2_seq; int num_mux_srcs; struct scarlett2_device_info const* info; int work; int data_mutex; int usb_mutex; } ;
struct scarlett2_device_info {int ports; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int SCARLETT2_USB_INIT_SEQ ;
 struct scarlett2_mixer_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int scarlett2_config_save_work ;
 int scarlett2_count_mux_srcs (int ) ;
 int scarlett2_init_routing (int ,int ) ;
 int scarlett2_private_free ;
 int scarlett2_private_suspend ;
 int scarlett2_usb (struct usb_mixer_interface*,int ,int *,int ,int *,int ) ;

__attribute__((used)) static int scarlett2_init_private(struct usb_mixer_interface *mixer,
      const struct scarlett2_device_info *info)
{
 struct scarlett2_mixer_data *private =
  kzalloc(sizeof(struct scarlett2_mixer_data), GFP_KERNEL);

 if (!private)
  return -ENOMEM;

 mutex_init(&private->usb_mutex);
 mutex_init(&private->data_mutex);
 INIT_DELAYED_WORK(&private->work, scarlett2_config_save_work);
 private->info = info;
 private->num_mux_srcs = scarlett2_count_mux_srcs(info->ports);
 private->scarlett2_seq = 0;
 private->mixer = mixer;
 mixer->private_data = private;
 mixer->private_free = scarlett2_private_free;
 mixer->private_suspend = scarlett2_private_suspend;


 scarlett2_init_routing(private->mux, info->ports);


 return scarlett2_usb(mixer, SCARLETT2_USB_INIT_SEQ, ((void*)0), 0, ((void*)0), 0);
}
