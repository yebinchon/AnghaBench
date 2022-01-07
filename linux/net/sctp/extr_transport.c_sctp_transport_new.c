
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int dummy; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int SCTP_DBG_OBJCNT_INC (struct sctp_transport*) ;
 int kfree (struct sctp_transport*) ;
 struct sctp_transport* kzalloc (int,int ) ;
 int sctp_transport_init (struct net*,struct sctp_transport*,union sctp_addr const*,int ) ;

struct sctp_transport *sctp_transport_new(struct net *net,
       const union sctp_addr *addr,
       gfp_t gfp)
{
 struct sctp_transport *transport;

 transport = kzalloc(sizeof(*transport), gfp);
 if (!transport)
  goto fail;

 if (!sctp_transport_init(net, transport, addr, gfp))
  goto fail_init;

 SCTP_DBG_OBJCNT_INC(transport);

 return transport;

fail_init:
 kfree(transport);

fail:
 return ((void*)0);
}
