
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int ceph_msgr_slab_exit () ;
 int * ceph_msgr_wq ;
 int destroy_workqueue (int *) ;
 int put_page (int *) ;
 int * zero_page ;

__attribute__((used)) static void _ceph_msgr_exit(void)
{
 if (ceph_msgr_wq) {
  destroy_workqueue(ceph_msgr_wq);
  ceph_msgr_wq = ((void*)0);
 }

 BUG_ON(zero_page == ((void*)0));
 put_page(zero_page);
 zero_page = ((void*)0);

 ceph_msgr_slab_exit();
}
