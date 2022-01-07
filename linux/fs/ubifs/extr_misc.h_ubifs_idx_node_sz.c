
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int key_len; int hash_len; } ;


 int UBIFS_BRANCH_SZ ;
 int UBIFS_IDX_NODE_SZ ;

__attribute__((used)) static inline int ubifs_idx_node_sz(const struct ubifs_info *c, int child_cnt)
{
 return UBIFS_IDX_NODE_SZ + (UBIFS_BRANCH_SZ + c->key_len + c->hash_len)
       * child_cnt;
}
