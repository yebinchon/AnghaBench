
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_reclaim_stat {int * recent_rotated; int * recent_scanned; } ;
struct lruvec {struct zone_reclaim_stat reclaim_stat; } ;



__attribute__((used)) static void update_page_reclaim_stat(struct lruvec *lruvec,
         int file, int rotated)
{
 struct zone_reclaim_stat *reclaim_stat = &lruvec->reclaim_stat;

 reclaim_stat->recent_scanned[file]++;
 if (rotated)
  reclaim_stat->recent_rotated[file]++;
}
