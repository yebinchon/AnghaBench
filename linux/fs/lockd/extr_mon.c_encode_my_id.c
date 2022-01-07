
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nsm_args {int proc; int vers; int prog; int nodename; } ;
typedef void* __be32 ;


 void* cpu_to_be32 (int ) ;
 int encode_nsm_string (struct xdr_stream*,int ) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_my_id(struct xdr_stream *xdr, const struct nsm_args *argp)
{
 __be32 *p;

 encode_nsm_string(xdr, argp->nodename);
 p = xdr_reserve_space(xdr, 4 + 4 + 4);
 *p++ = cpu_to_be32(argp->prog);
 *p++ = cpu_to_be32(argp->vers);
 *p = cpu_to_be32(argp->proc);
}
