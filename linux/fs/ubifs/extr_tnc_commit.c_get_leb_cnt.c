
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int leb_size; int ihead_offs; int max_idx_node_sz; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static int get_leb_cnt(struct ubifs_info *c, int cnt)
{
 int d;


 cnt -= (c->leb_size - c->ihead_offs) / c->max_idx_node_sz;
 if (cnt < 0)
  cnt = 0;
 d = c->leb_size / c->max_idx_node_sz;
 return DIV_ROUND_UP(cnt, d);
}
