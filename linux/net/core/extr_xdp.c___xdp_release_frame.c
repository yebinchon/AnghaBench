
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_mem_info {int id; } ;
struct xdp_mem_allocator {int page_pool; } ;
struct page {int dummy; } ;


 int mem_id_ht ;
 int mem_id_rht_params ;
 int page_pool_release_page (int ,struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct xdp_mem_allocator* rhashtable_lookup (int ,int *,int ) ;
 struct page* virt_to_head_page (void*) ;

void __xdp_release_frame(void *data, struct xdp_mem_info *mem)
{
 struct xdp_mem_allocator *xa;
 struct page *page;

 rcu_read_lock();
 xa = rhashtable_lookup(mem_id_ht, &mem->id, mem_id_rht_params);
 page = virt_to_head_page(data);
 if (xa)
  page_pool_release_page(xa->page_pool, page);
 rcu_read_unlock();
}
