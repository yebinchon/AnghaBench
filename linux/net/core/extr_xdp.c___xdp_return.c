
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_mem_info {int type; int id; } ;
struct xdp_mem_allocator {TYPE_1__* zc_alloc; int page_pool; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int (* free ) (TYPE_1__*,unsigned long) ;} ;






 int WARN_ONCE (int,char*,int ) ;
 int likely (struct xdp_mem_allocator*) ;
 int mem_id_ht ;
 int mem_id_rht_params ;
 int page_frag_free (void*) ;
 int page_pool_put_page (int ,struct page*,int) ;
 int put_page (struct page*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct xdp_mem_allocator* rhashtable_lookup (int ,int *,int ) ;
 int stub1 (TYPE_1__*,unsigned long) ;
 int trace_mem_return_failed (struct xdp_mem_info*,struct page*) ;
 struct page* virt_to_head_page (void*) ;
 struct page* virt_to_page (void*) ;
 int xdp_return_frame_no_direct () ;

__attribute__((used)) static void __xdp_return(void *data, struct xdp_mem_info *mem, bool napi_direct,
    unsigned long handle)
{
 struct xdp_mem_allocator *xa;
 struct page *page;

 switch (mem->type) {
 case 130:
  rcu_read_lock();

  xa = rhashtable_lookup(mem_id_ht, &mem->id, mem_id_rht_params);
  page = virt_to_head_page(data);
  if (likely(xa)) {
   napi_direct &= !xdp_return_frame_no_direct();
   page_pool_put_page(xa->page_pool, page, napi_direct);
  } else {

   WARN_ONCE(1, "page_pool gone mem.id=%d", mem->id);
   trace_mem_return_failed(mem, page);
   put_page(page);
  }
  rcu_read_unlock();
  break;
 case 129:
  page_frag_free(data);
  break;
 case 131:
  page = virt_to_page(data);
  put_page(page);
  break;
 case 128:

  rcu_read_lock();

  xa = rhashtable_lookup(mem_id_ht, &mem->id, mem_id_rht_params);
  xa->zc_alloc->free(xa->zc_alloc, handle);
  rcu_read_unlock();
 default:

  break;
 }
}
