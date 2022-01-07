
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_osd_linger_request {int reg_commit_error; int reg_commit_wait; } ;


 int complete_all (int *) ;
 int completion_done (int *) ;

__attribute__((used)) static void linger_reg_commit_complete(struct ceph_osd_linger_request *lreq,
           int result)
{
 if (!completion_done(&lreq->reg_commit_wait)) {
  lreq->reg_commit_error = (result <= 0 ? result : 0);
  complete_all(&lreq->reg_commit_wait);
 }
}
