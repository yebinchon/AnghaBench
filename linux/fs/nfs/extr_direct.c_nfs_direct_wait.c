
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_direct_req {scalar_t__ count; scalar_t__ error; int completion; scalar_t__ iocb; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EIOCBQUEUED ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ wait_for_completion_killable (int *) ;

__attribute__((used)) static ssize_t nfs_direct_wait(struct nfs_direct_req *dreq)
{
 ssize_t result = -EIOCBQUEUED;


 if (dreq->iocb)
  goto out;

 result = wait_for_completion_killable(&dreq->completion);

 if (!result) {
  result = dreq->count;
  WARN_ON_ONCE(dreq->count < 0);
 }
 if (!result)
  result = dreq->error;

out:
 return (ssize_t) result;
}
