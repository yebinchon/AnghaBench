
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct mountres {int errno; } ;
typedef int __be32 ;
struct TYPE_3__ {scalar_t__ status; int errno; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EACCES ;
 int EIO ;
 scalar_t__ be32_to_cpup (int *) ;
 int dprintk (char*,scalar_t__) ;
 TYPE_1__* mnt_errtbl ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_status(struct xdr_stream *xdr, struct mountres *res)
{
 unsigned int i;
 u32 status;
 __be32 *p;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(p == ((void*)0)))
  return -EIO;
 status = be32_to_cpup(p);

 for (i = 0; i < ARRAY_SIZE(mnt_errtbl); i++) {
  if (mnt_errtbl[i].status == status) {
   res->errno = mnt_errtbl[i].errno;
   return 0;
  }
 }

 dprintk("NFS: unrecognized MNT status code: %u\n", status);
 res->errno = -EACCES;
 return 0;
}
