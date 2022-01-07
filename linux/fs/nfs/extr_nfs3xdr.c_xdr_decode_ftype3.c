
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef size_t u32 ;
typedef int __be32 ;


 size_t NF3FIFO ;
 size_t NF3NON ;
 size_t be32_to_cpup (int ) ;
 int * nfs_type2fmt ;

__attribute__((used)) static __be32 *xdr_decode_ftype3(__be32 *p, umode_t *mode)
{
 u32 type;

 type = be32_to_cpup(p++);
 if (type > NF3FIFO)
  type = NF3NON;
 *mode = nfs_type2fmt[type];
 return p;
}
