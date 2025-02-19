
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long nr_badpages; unsigned int* badpages; unsigned int last_page; } ;
union swap_header {TYPE_1__ info; } ;
struct swap_info_struct {unsigned int cluster_next; unsigned long max; unsigned int pages; int free_clusters; int discard_clusters; } ;
struct swap_cluster_info {int dummy; } ;
typedef int sector_t ;


 int CLUSTER_FLAG_FREE ;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned int) ;
 int EINVAL ;
 unsigned int SWAPFILE_CLUSTER ;
 unsigned int SWAP_CLUSTER_COLS ;
 unsigned char SWAP_MAP_BAD ;
 scalar_t__ cluster_count (struct swap_cluster_info*) ;
 int cluster_list_add_tail (int *,struct swap_cluster_info*,unsigned long) ;
 int cluster_list_init (int *) ;
 int cluster_set_flag (struct swap_cluster_info*,int ) ;
 int inc_cluster_info_page (struct swap_info_struct*,struct swap_cluster_info*,unsigned long) ;
 int pr_warn (char*) ;
 unsigned long round_up (unsigned long,unsigned int) ;
 int setup_swap_extents (struct swap_info_struct*,int *) ;

__attribute__((used)) static int setup_swap_map_and_extents(struct swap_info_struct *p,
     union swap_header *swap_header,
     unsigned char *swap_map,
     struct swap_cluster_info *cluster_info,
     unsigned long maxpages,
     sector_t *span)
{
 unsigned int j, k;
 unsigned int nr_good_pages;
 int nr_extents;
 unsigned long nr_clusters = DIV_ROUND_UP(maxpages, SWAPFILE_CLUSTER);
 unsigned long col = p->cluster_next / SWAPFILE_CLUSTER % SWAP_CLUSTER_COLS;
 unsigned long i, idx;

 nr_good_pages = maxpages - 1;

 cluster_list_init(&p->free_clusters);
 cluster_list_init(&p->discard_clusters);

 for (i = 0; i < swap_header->info.nr_badpages; i++) {
  unsigned int page_nr = swap_header->info.badpages[i];
  if (page_nr == 0 || page_nr > swap_header->info.last_page)
   return -EINVAL;
  if (page_nr < maxpages) {
   swap_map[page_nr] = SWAP_MAP_BAD;
   nr_good_pages--;




   inc_cluster_info_page(p, cluster_info, page_nr);
  }
 }


 for (i = maxpages; i < round_up(maxpages, SWAPFILE_CLUSTER); i++)
  inc_cluster_info_page(p, cluster_info, i);

 if (nr_good_pages) {
  swap_map[0] = SWAP_MAP_BAD;




  inc_cluster_info_page(p, cluster_info, 0);
  p->max = maxpages;
  p->pages = nr_good_pages;
  nr_extents = setup_swap_extents(p, span);
  if (nr_extents < 0)
   return nr_extents;
  nr_good_pages = p->pages;
 }
 if (!nr_good_pages) {
  pr_warn("Empty swap-file\n");
  return -EINVAL;
 }

 if (!cluster_info)
  return nr_extents;






 for (k = 0; k < SWAP_CLUSTER_COLS; k++) {
  j = (k + col) % SWAP_CLUSTER_COLS;
  for (i = 0; i < DIV_ROUND_UP(nr_clusters, SWAP_CLUSTER_COLS); i++) {
   idx = i * SWAP_CLUSTER_COLS + j;
   if (idx >= nr_clusters)
    continue;
   if (cluster_count(&cluster_info[idx]))
    continue;
   cluster_set_flag(&cluster_info[idx], CLUSTER_FLAG_FREE);
   cluster_list_add_tail(&p->free_clusters, cluster_info,
           idx);
  }
 }
 return nr_extents;
}
