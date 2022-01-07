
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int __be32 ;


 scalar_t__ NF2FIFO ;
 scalar_t__ NFBAD ;
 scalar_t__ be32_to_cpup (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __be32 *xdr_decode_ftype(__be32 *p, u32 *type)
{
 *type = be32_to_cpup(p++);
 if (unlikely(*type > NF2FIFO))
  *type = NFBAD;
 return p;
}
