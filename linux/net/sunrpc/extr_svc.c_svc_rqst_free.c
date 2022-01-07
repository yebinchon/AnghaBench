
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_auth_data; int rq_argp; int rq_resp; } ;


 int kfree (int ) ;
 int kfree_rcu (struct svc_rqst*,int ) ;
 int rq_rcu_head ;
 int svc_release_buffer (struct svc_rqst*) ;

void
svc_rqst_free(struct svc_rqst *rqstp)
{
 svc_release_buffer(rqstp);
 kfree(rqstp->rq_resp);
 kfree(rqstp->rq_argp);
 kfree(rqstp->rq_auth_data);
 kfree_rcu(rqstp, rq_rcu_head);
}
