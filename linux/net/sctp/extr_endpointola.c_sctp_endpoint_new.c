
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
typedef int gfp_t ;


 int SCTP_DBG_OBJCNT_INC (struct sctp_endpoint*) ;
 int kfree (struct sctp_endpoint*) ;
 struct sctp_endpoint* kzalloc (int,int ) ;
 int sctp_endpoint_init (struct sctp_endpoint*,struct sock*,int ) ;

struct sctp_endpoint *sctp_endpoint_new(struct sock *sk, gfp_t gfp)
{
 struct sctp_endpoint *ep;


 ep = kzalloc(sizeof(*ep), gfp);
 if (!ep)
  goto fail;

 if (!sctp_endpoint_init(ep, sk, gfp))
  goto fail_init;

 SCTP_DBG_OBJCNT_INC(ep);
 return ep;

fail_init:
 kfree(ep);
fail:
 return ((void*)0);
}
