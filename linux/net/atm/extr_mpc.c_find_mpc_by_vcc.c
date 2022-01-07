
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpoa_client {struct mpoa_client* next; struct atm_vcc* mpoad_vcc; } ;
struct atm_vcc {int dummy; } ;


 struct mpoa_client* mpcs ;

__attribute__((used)) static struct mpoa_client *find_mpc_by_vcc(struct atm_vcc *vcc)
{
 struct mpoa_client *mpc;

 mpc = mpcs;
 while (mpc != ((void*)0)) {
  if (mpc->mpoad_vcc == vcc)
   return mpc;
  mpc = mpc->next;
 }

 return ((void*)0);
}
