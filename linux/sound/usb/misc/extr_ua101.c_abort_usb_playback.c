
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int alsa_playback_wait; int states; } ;


 int USB_PLAYBACK_RUNNING ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void abort_usb_playback(struct ua101 *ua)
{
 if (test_and_clear_bit(USB_PLAYBACK_RUNNING, &ua->states))
  wake_up(&ua->alsa_playback_wait);
}
