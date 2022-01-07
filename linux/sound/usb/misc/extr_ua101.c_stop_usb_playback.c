
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int playback_tasklet; int playback; int states; } ;


 int INTF_PLAYBACK ;
 int USB_PLAYBACK_RUNNING ;
 int clear_bit (int ,int *) ;
 int disable_iso_interface (struct ua101*,int ) ;
 int kill_stream_urbs (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void stop_usb_playback(struct ua101 *ua)
{
 clear_bit(USB_PLAYBACK_RUNNING, &ua->states);

 kill_stream_urbs(&ua->playback);

 tasklet_kill(&ua->playback_tasklet);

 disable_iso_interface(ua, INTF_PLAYBACK);
}
