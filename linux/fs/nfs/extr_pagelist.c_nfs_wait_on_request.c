
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_flags; } ;


 int PG_BUSY ;
 int PG_CONTENDED2 ;
 int TASK_UNINTERRUPTIBLE ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int test_bit (int ,int *) ;
 int wait_on_bit_io (int *,int ,int ) ;

int
nfs_wait_on_request(struct nfs_page *req)
{
 if (!test_bit(PG_BUSY, &req->wb_flags))
  return 0;
 set_bit(PG_CONTENDED2, &req->wb_flags);
 smp_mb__after_atomic();
 return wait_on_bit_io(&req->wb_flags, PG_BUSY,
         TASK_UNINTERRUPTIBLE);
}
