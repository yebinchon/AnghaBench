
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sort; int cmp; int sort_list; int list; } ;
struct block_hist {int valid; TYPE_1__ block_fmt; int block_list; int block_hists; } ;


 int INIT_LIST_HEAD (int *) ;
 int __hists__init (int *,int *) ;
 int block_cmp ;
 int block_sort ;
 int perf_hpp_list__init (int *) ;
 int perf_hpp_list__register_sort_field (int *,TYPE_1__*) ;

__attribute__((used)) static void init_block_hist(struct block_hist *bh)
{
 __hists__init(&bh->block_hists, &bh->block_list);
 perf_hpp_list__init(&bh->block_list);

 INIT_LIST_HEAD(&bh->block_fmt.list);
 INIT_LIST_HEAD(&bh->block_fmt.sort_list);
 bh->block_fmt.cmp = block_cmp;
 bh->block_fmt.sort = block_sort;
 perf_hpp_list__register_sort_field(&bh->block_list,
        &bh->block_fmt);
 bh->valid = 1;
}
