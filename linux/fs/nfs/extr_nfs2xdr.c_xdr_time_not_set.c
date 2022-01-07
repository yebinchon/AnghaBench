
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int NFS2_SATTR_NOT_SET ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static __be32 *xdr_time_not_set(__be32 *p)
{
 *p++ = cpu_to_be32(NFS2_SATTR_NOT_SET);
 *p++ = cpu_to_be32(NFS2_SATTR_NOT_SET);
 return p;
}
