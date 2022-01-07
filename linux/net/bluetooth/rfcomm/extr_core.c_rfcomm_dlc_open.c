
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_dlc {int dummy; } ;
typedef int bdaddr_t ;


 int __rfcomm_dlc_open (struct rfcomm_dlc*,int *,int *,int ) ;
 int rfcomm_lock () ;
 int rfcomm_unlock () ;

int rfcomm_dlc_open(struct rfcomm_dlc *d, bdaddr_t *src, bdaddr_t *dst, u8 channel)
{
 int r;

 rfcomm_lock();

 r = __rfcomm_dlc_open(d, src, dst, channel);

 rfcomm_unlock();
 return r;
}
