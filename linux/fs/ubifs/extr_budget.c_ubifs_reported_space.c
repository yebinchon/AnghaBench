
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int fanout; int max_idx_node_sz; } ;


 int UBIFS_BLOCK_SIZE ;
 int UBIFS_MAX_DATA_NODE_SZ ;
 long long div_u64 (long long,int) ;

long long ubifs_reported_space(const struct ubifs_info *c, long long free)
{
 int divisor, factor, f;
 f = c->fanout > 3 ? c->fanout >> 1 : 2;
 factor = UBIFS_BLOCK_SIZE;
 divisor = UBIFS_MAX_DATA_NODE_SZ;
 divisor += (c->max_idx_node_sz * 3) / (f - 1);
 free *= factor;
 return div_u64(free, divisor);
}
