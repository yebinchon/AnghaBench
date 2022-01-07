
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int hmac_desc_len; } ;


 int memchr_inv (int const*,int ,int ) ;

bool ubifs_hmac_zero(struct ubifs_info *c, const u8 *hmac)
{
 return !memchr_inv(hmac, 0, c->hmac_desc_len);
}
