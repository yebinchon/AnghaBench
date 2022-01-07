
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {unsigned int mtu; } ;
struct rfcomm_dev {int wmem_alloc; struct rfcomm_dlc* dlc; } ;


 int atomic_read (int *) ;
 unsigned int max (int ,int) ;

__attribute__((used)) static inline unsigned int rfcomm_room(struct rfcomm_dev *dev)
{
 struct rfcomm_dlc *dlc = dev->dlc;


 int pending = 40 - atomic_read(&dev->wmem_alloc);

 return max(0, pending) * dlc->mtu;
}
