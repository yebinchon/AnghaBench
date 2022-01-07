
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct comm_runtime {TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int usb6fire_comm_init_buffer (int *,int,int ,int ,int ,int) ;
 int usb6fire_comm_send_buffer (int *,int ) ;

__attribute__((used)) static int usb6fire_comm_write8(struct comm_runtime *rt, u8 request,
  u8 reg, u8 value)
{
 u8 *buffer;
 int ret;


 buffer = kmalloc(13, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 usb6fire_comm_init_buffer(buffer, 0x00, request, reg, value, 0x00);
 ret = usb6fire_comm_send_buffer(buffer, rt->chip->dev);

 kfree(buffer);
 return ret;
}
