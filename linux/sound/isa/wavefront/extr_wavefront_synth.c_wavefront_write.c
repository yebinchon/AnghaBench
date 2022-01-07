
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_port; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int DPRINT (int ,char*) ;
 int STAT_CAN_WRITE ;
 int WF_DEBUG_DATA ;
 int outb (unsigned char,int ) ;
 scalar_t__ wavefront_wait (TYPE_1__*,int ) ;

__attribute__((used)) static int
wavefront_write (snd_wavefront_t *dev, unsigned char data)

{
 if (wavefront_wait (dev, STAT_CAN_WRITE)) {
  outb (data, dev->data_port);
  return 0;
 }

 DPRINT (WF_DEBUG_DATA, "write timeout.\n");

 return -1;
}
