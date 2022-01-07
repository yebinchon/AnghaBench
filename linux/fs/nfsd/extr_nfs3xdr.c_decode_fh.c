
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int fh_size; int fh_base; } ;
struct svc_fh {TYPE_1__ fh_handle; } ;
typedef int __be32 ;


 unsigned int NFS3_FHSIZE ;
 int XDR_QUADLEN (unsigned int) ;
 int fh_init (struct svc_fh*,unsigned int) ;
 int memcpy (int *,int *,unsigned int) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static __be32 *
decode_fh(__be32 *p, struct svc_fh *fhp)
{
 unsigned int size;
 fh_init(fhp, NFS3_FHSIZE);
 size = ntohl(*p++);
 if (size > NFS3_FHSIZE)
  return ((void*)0);

 memcpy(&fhp->fh_handle.fh_base, p, size);
 fhp->fh_handle.fh_size = size;
 return p + XDR_QUADLEN(size);
}
