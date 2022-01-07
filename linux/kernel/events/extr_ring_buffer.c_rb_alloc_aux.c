
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer {int aux_nr_pages; int aux_overwrite; long aux_watermark; int aux_pgoff; int aux_refcount; int aux_priv; int * aux_pages; int free_aux; } ;
struct perf_event {int cpu; TYPE_1__* pmu; } ;
struct page {int dummy; } ;
typedef int pgoff_t ;
struct TYPE_2__ {int capabilities; int (* setup_aux ) (struct perf_event*,int *,int,int) ;int free_aux; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int PERF_PMU_CAP_AUX_NO_SG ;
 int RING_BUFFER_WRITABLE ;
 int __rb_free_aux (struct ring_buffer*) ;
 int cpu_to_node (int) ;
 int has_aux (struct perf_event*) ;
 int ilog2 (int) ;
 int * kcalloc_node (int,int,int ,int) ;
 int min (int,int) ;
 int page_address (int ) ;
 int page_private (struct page*) ;
 struct page* rb_alloc_aux_page (int,int) ;
 int refcount_set (int *,int) ;
 int stub1 (struct perf_event*,int *,int,int) ;
 struct page* virt_to_page (int ) ;

int rb_alloc_aux(struct ring_buffer *rb, struct perf_event *event,
   pgoff_t pgoff, int nr_pages, long watermark, int flags)
{
 bool overwrite = !(flags & RING_BUFFER_WRITABLE);
 int node = (event->cpu == -1) ? -1 : cpu_to_node(event->cpu);
 int ret = -ENOMEM, max_order;

 if (!has_aux(event))
  return -EOPNOTSUPP;





 max_order = ilog2(nr_pages);





 if (!overwrite) {
  if (!max_order)
   return -EINVAL;

  max_order--;
 }

 rb->aux_pages = kcalloc_node(nr_pages, sizeof(void *), GFP_KERNEL,
         node);
 if (!rb->aux_pages)
  return -ENOMEM;

 rb->free_aux = event->pmu->free_aux;
 for (rb->aux_nr_pages = 0; rb->aux_nr_pages < nr_pages;) {
  struct page *page;
  int last, order;

  order = min(max_order, ilog2(nr_pages - rb->aux_nr_pages));
  page = rb_alloc_aux_page(node, order);
  if (!page)
   goto out;

  for (last = rb->aux_nr_pages + (1 << page_private(page));
       last > rb->aux_nr_pages; rb->aux_nr_pages++)
   rb->aux_pages[rb->aux_nr_pages] = page_address(page++);
 }







 if ((event->pmu->capabilities & PERF_PMU_CAP_AUX_NO_SG) &&
     overwrite) {
  struct page *page = virt_to_page(rb->aux_pages[0]);

  if (page_private(page) != max_order)
   goto out;
 }

 rb->aux_priv = event->pmu->setup_aux(event, rb->aux_pages, nr_pages,
          overwrite);
 if (!rb->aux_priv)
  goto out;

 ret = 0;







 refcount_set(&rb->aux_refcount, 1);

 rb->aux_overwrite = overwrite;
 rb->aux_watermark = watermark;

 if (!rb->aux_watermark && !rb->aux_overwrite)
  rb->aux_watermark = nr_pages << (PAGE_SHIFT - 1);

out:
 if (!ret)
  rb->aux_pgoff = pgoff;
 else
  __rb_free_aux(rb);

 return ret;
}
