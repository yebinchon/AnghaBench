
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int __ubifs_node_insert_hmac (struct ubifs_info const*,void*,int,int) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info const*) ;

__attribute__((used)) static inline int ubifs_node_insert_hmac(const struct ubifs_info *c, void *buf,
       int len, int ofs_hmac)
{
 if (ubifs_authenticated(c))
  return __ubifs_node_insert_hmac(c, buf, len, ofs_hmac);
 else
  return 0;
}
