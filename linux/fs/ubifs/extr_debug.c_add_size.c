
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int child_cnt; } ;
struct ubifs_info {int dummy; } ;


 int ALIGN (int,int) ;
 int ubifs_idx_node_sz (struct ubifs_info*,int ) ;

__attribute__((used)) static int add_size(struct ubifs_info *c, struct ubifs_znode *znode, void *priv)
{
 long long *idx_size = priv;
 int add;

 add = ubifs_idx_node_sz(c, znode->child_cnt);
 add = ALIGN(add, 8);
 *idx_size += add;
 return 0;
}
