
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef enum sctp_scope { ____Placeholder_sctp_scope } sctp_scope ;


 int SCTP_DBG_OBJCNT_INC (int ) ;
 int assoc ;
 int kfree (struct sctp_association*) ;
 struct sctp_association* kzalloc (int,int ) ;
 int pr_debug (char*,struct sctp_association*) ;
 int sctp_association_init (struct sctp_association*,struct sctp_endpoint const*,struct sock const*,int,int ) ;

struct sctp_association *sctp_association_new(const struct sctp_endpoint *ep,
           const struct sock *sk,
           enum sctp_scope scope, gfp_t gfp)
{
 struct sctp_association *asoc;

 asoc = kzalloc(sizeof(*asoc), gfp);
 if (!asoc)
  goto fail;

 if (!sctp_association_init(asoc, ep, sk, scope, gfp))
  goto fail_init;

 SCTP_DBG_OBJCNT_INC(assoc);

 pr_debug("Created asoc %p\n", asoc);

 return asoc;

fail_init:
 kfree(asoc);
fail:
 return ((void*)0);
}
