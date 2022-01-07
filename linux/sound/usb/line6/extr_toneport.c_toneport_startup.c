
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6 {int line6pcm; } ;


 int LINE6_STREAM_MONITOR ;
 int line6_pcm_acquire (int ,int ,int) ;

__attribute__((used)) static void toneport_startup(struct usb_line6 *line6)
{
 line6_pcm_acquire(line6->line6pcm, LINE6_STREAM_MONITOR, 1);
}
