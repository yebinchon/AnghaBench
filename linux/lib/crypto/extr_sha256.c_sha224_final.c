
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha256_state {int dummy; } ;


 int __sha256_final (struct sha256_state*,int *,int) ;

int sha224_final(struct sha256_state *sctx, u8 *out)
{
 return __sha256_final(sctx, out, 7);
}
