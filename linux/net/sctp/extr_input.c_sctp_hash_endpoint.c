
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;


 int __sctp_hash_endpoint (struct sctp_endpoint*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

int sctp_hash_endpoint(struct sctp_endpoint *ep)
{
 int err;

 local_bh_disable();
 err = __sctp_hash_endpoint(ep);
 local_bh_enable();

 return err;
}
