
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ua101 {int capture; int states; } ;


 int INTF_CAPTURE ;
 int USB_CAPTURE_RUNNING ;
 int clear_bit (int ,int *) ;
 int disable_iso_interface (struct ua101*,int ) ;
 int kill_stream_urbs (int *) ;

__attribute__((used)) static void stop_usb_capture(struct ua101 *ua)
{
 clear_bit(USB_CAPTURE_RUNNING, &ua->states);

 kill_stream_urbs(&ua->capture);

 disable_iso_interface(ua, INTF_CAPTURE);
}
