
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int rq_flags; } ;


 int RQ_SECURE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int svc_addr (struct svc_rqst*) ;
 scalar_t__ svc_port_is_privileged (int ) ;

__attribute__((used)) static void svc_sock_secure_port(struct svc_rqst *rqstp)
{
 if (svc_port_is_privileged(svc_addr(rqstp)))
  set_bit(RQ_SECURE, &rqstp->rq_flags);
 else
  clear_bit(RQ_SECURE, &rqstp->rq_flags);
}
