
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha256_state {int dummy; } ;


 int sha256_update (struct sha256_state*,int const*,unsigned int) ;

int sha224_update(struct sha256_state *sctx, const u8 *data, unsigned int len)
{
 return sha256_update(sctx, data, len);
}
