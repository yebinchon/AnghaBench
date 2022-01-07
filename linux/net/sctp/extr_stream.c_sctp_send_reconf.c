
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int sk; } ;
struct sctp_association {TYPE_1__ base; } ;
struct net {int dummy; } ;


 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_primitive_RECONF (struct net*,struct sctp_association*,struct sctp_chunk*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int sctp_send_reconf(struct sctp_association *asoc,
       struct sctp_chunk *chunk)
{
 struct net *net = sock_net(asoc->base.sk);
 int retval = 0;

 retval = sctp_primitive_RECONF(net, asoc, chunk);
 if (retval)
  sctp_chunk_free(chunk);

 return retval;
}
