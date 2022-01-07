
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdr_buf {TYPE_1__* head; } ;
struct gss_svc_data {scalar_t__* verf_start; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {int iov_len; } ;


 int XDR_QUADLEN (int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int ntohl (int ) ;
 scalar_t__ rpc_success ;

__attribute__((used)) static __be32 *
svcauth_gss_prepare_to_wrap(struct xdr_buf *resbuf, struct gss_svc_data *gsd)
{
 __be32 *p;
 u32 verf_len;

 p = gsd->verf_start;
 gsd->verf_start = ((void*)0);


 if (*(p-1) != rpc_success)
  return ((void*)0);

 p += 1;
 verf_len = ntohl(*p++);
 p += XDR_QUADLEN(verf_len);

 memcpy(p, p + 2, 4);

 if (*p != rpc_success) {
  resbuf->head[0].iov_len -= 2 * 4;
  return ((void*)0);
 }
 p++;
 return p;
}
