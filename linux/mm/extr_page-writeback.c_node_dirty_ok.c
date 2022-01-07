
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int dummy; } ;


 int NR_FILE_DIRTY ;
 int NR_UNSTABLE_NFS ;
 int NR_WRITEBACK ;
 unsigned long node_dirty_limit (struct pglist_data*) ;
 scalar_t__ node_page_state (struct pglist_data*,int ) ;

bool node_dirty_ok(struct pglist_data *pgdat)
{
 unsigned long limit = node_dirty_limit(pgdat);
 unsigned long nr_pages = 0;

 nr_pages += node_page_state(pgdat, NR_FILE_DIRTY);
 nr_pages += node_page_state(pgdat, NR_UNSTABLE_NFS);
 nr_pages += node_page_state(pgdat, NR_WRITEBACK);

 return nr_pages <= limit;
}
