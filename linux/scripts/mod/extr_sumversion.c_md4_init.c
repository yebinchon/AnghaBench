
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md4_ctx {int* hash; scalar_t__ byte_count; } ;



__attribute__((used)) static void md4_init(struct md4_ctx *mctx)
{
 mctx->hash[0] = 0x67452301;
 mctx->hash[1] = 0xefcdab89;
 mctx->hash[2] = 0x98badcfe;
 mctx->hash[3] = 0x10325476;
 mctx->byte_count = 0;
}
