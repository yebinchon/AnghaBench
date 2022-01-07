
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha256_state {int count; int * state; } ;
typedef int bits ;
typedef int __be64 ;
typedef int __be32 ;


 int cpu_to_be64 (int) ;
 int memset (struct sha256_state*,int ,int) ;
 int put_unaligned_be32 (int ,int *) ;
 int sha256_update (struct sha256_state*,int const*,int) ;

__attribute__((used)) static int __sha256_final(struct sha256_state *sctx, u8 *out, int digest_words)
{
 __be32 *dst = (__be32 *)out;
 __be64 bits;
 unsigned int index, pad_len;
 int i;
 static const u8 padding[64] = { 0x80, };


 bits = cpu_to_be64(sctx->count << 3);


 index = sctx->count & 0x3f;
 pad_len = (index < 56) ? (56 - index) : ((64+56) - index);
 sha256_update(sctx, padding, pad_len);


 sha256_update(sctx, (const u8 *)&bits, sizeof(bits));


 for (i = 0; i < digest_words; i++)
  put_unaligned_be32(sctx->state[i], &dst[i]);


 memset(sctx, 0, sizeof(*sctx));

 return 0;
}
