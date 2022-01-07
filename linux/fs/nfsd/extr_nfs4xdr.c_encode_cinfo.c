
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_change_info {int after_ctime_nsec; int after_ctime_sec; int before_ctime_nsec; int before_ctime_sec; int after_change; int before_change; scalar_t__ change_supported; int atomic; } ;
typedef int __be32 ;


 void* cpu_to_be32 (int ) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static __be32 *encode_cinfo(__be32 *p, struct nfsd4_change_info *c)
{
 *p++ = cpu_to_be32(c->atomic);
 if (c->change_supported) {
  p = xdr_encode_hyper(p, c->before_change);
  p = xdr_encode_hyper(p, c->after_change);
 } else {
  *p++ = cpu_to_be32(c->before_ctime_sec);
  *p++ = cpu_to_be32(c->before_ctime_nsec);
  *p++ = cpu_to_be32(c->after_ctime_sec);
  *p++ = cpu_to_be32(c->after_ctime_nsec);
 }
 return p;
}
