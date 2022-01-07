
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_flags; } ;


 int RQ_SECURE ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void svc_rdma_secure_port(struct svc_rqst *rqstp)
{
 set_bit(RQ_SECURE, &rqstp->rq_flags);
}
