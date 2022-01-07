
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;


 int KEYLENGTH ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;

__attribute__((used)) static bool fib_valid_key_len(u32 key, u8 plen, struct netlink_ext_ack *extack)
{
 if (plen > KEYLENGTH) {
  NL_SET_ERR_MSG(extack, "Invalid prefix length");
  return 0;
 }

 if ((plen < KEYLENGTH) && (key << plen)) {
  NL_SET_ERR_MSG(extack,
          "Invalid prefix for given prefix length");
  return 0;
 }

 return 1;
}
