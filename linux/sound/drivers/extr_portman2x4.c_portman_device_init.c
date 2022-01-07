
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct portman {int dummy; } ;


 int portman_flush_input (struct portman*,int) ;

__attribute__((used)) static int portman_device_init(struct portman *pm)
{
 portman_flush_input(pm, 0);
 portman_flush_input(pm, 1);

 return 0;
}
