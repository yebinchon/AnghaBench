
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int ubifs_node_calc_hmac (struct ubifs_info const*,void*,int,int,void*) ;

int __ubifs_node_insert_hmac(const struct ubifs_info *c, void *node, int len,
       int ofs_hmac)
{
 return ubifs_node_calc_hmac(c, node, len, ofs_hmac, node + ofs_hmac);
}
