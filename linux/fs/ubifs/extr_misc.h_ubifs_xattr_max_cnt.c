
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int leb_size; int max_orphans; } ;


 int UBIFS_INO_NODE_SZ ;
 int ubifs_assert (struct ubifs_info*,int) ;

__attribute__((used)) static inline int ubifs_xattr_max_cnt(struct ubifs_info *c)
{
 int max_xattrs = (c->leb_size / 2) / UBIFS_INO_NODE_SZ;

 ubifs_assert(c, max_xattrs < c->max_orphans);
 return max_xattrs;
}
