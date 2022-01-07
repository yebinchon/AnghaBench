
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int BUG_ON (int) ;
 scalar_t__ NLM_FAILED ;
 scalar_t__ be32_to_cpu (int const) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_nlm4_stat(struct xdr_stream *xdr,
        const __be32 stat)
{
 __be32 *p;

 BUG_ON(be32_to_cpu(stat) > NLM_FAILED);
 p = xdr_reserve_space(xdr, 4);
 *p = stat;
}
