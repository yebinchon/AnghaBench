
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* gen_syndrome ) (int,size_t,void**) ;} ;


 int raid6_2data_recov (int,size_t,int,int,void**) ;
 TYPE_1__ raid6_call ;
 int raid6_datap_recov (int,size_t,int,void**) ;
 int stub1 (int,size_t,void**) ;

void raid6_dual_recov(int disks, size_t bytes, int faila, int failb, void **ptrs)
{
 if ( faila > failb ) {
  int tmp = faila;
  faila = failb;
  failb = tmp;
 }

 if ( failb == disks-1 ) {
  if ( faila == disks-2 ) {

   raid6_call.gen_syndrome(disks, bytes, ptrs);
  } else {



  }
 } else {
  if ( failb == disks-2 ) {

   raid6_datap_recov(disks, bytes, faila, ptrs);
  } else {

   raid6_2data_recov(disks, bytes, faila, failb, ptrs);
  }
 }
}
