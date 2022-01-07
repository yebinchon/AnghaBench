
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {unsigned long gro_bitmask; } ;


 int __napi_gro_flush_chain (struct napi_struct*,unsigned int,int) ;
 unsigned int ffs (unsigned long) ;

void napi_gro_flush(struct napi_struct *napi, bool flush_old)
{
 unsigned long bitmask = napi->gro_bitmask;
 unsigned int i, base = ~0U;

 while ((i = ffs(bitmask)) != 0) {
  bitmask >>= i;
  base += i;
  __napi_gro_flush_chain(napi, base, flush_old);
 }
}
