
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int hmac_desc_len; } ;


 int crypto_memneq (int const*,int const*,int ) ;

__attribute__((used)) static inline int ubifs_check_hmac(const struct ubifs_info *c,
       const u8 *expected, const u8 *got)
{
 return crypto_memneq(expected, got, c->hmac_desc_len);
}
