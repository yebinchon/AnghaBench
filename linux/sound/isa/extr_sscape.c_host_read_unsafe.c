
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_CTRL_IO (unsigned int) ;
 int HOST_DATA_IO (unsigned int) ;
 int RX_READY ;
 int inb (int ) ;

__attribute__((used)) static inline int host_read_unsafe(unsigned io_base)
{
 int data = -1;
 if ((inb(HOST_CTRL_IO(io_base)) & RX_READY) != 0)
  data = inb(HOST_DATA_IO(io_base));

 return data;
}
