
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {scalar_t__ rc_code; int rc_waitq; } ;
struct snd_hwdep {struct usb_mixer_interface* private_data; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t snd_usb_sbrc_hwdep_poll(struct snd_hwdep *hw, struct file *file,
         poll_table *wait)
{
 struct usb_mixer_interface *mixer = hw->private_data;

 poll_wait(file, &mixer->rc_waitq, wait);
 return mixer->rc_code ? EPOLLIN | EPOLLRDNORM : 0;
}
