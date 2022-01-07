
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct xdp_mem_allocator {int rcu; int node; int page_pool; TYPE_1__ mem; int disconnect_cnt; } ;


 scalar_t__ MEM_TYPE_PAGE_POOL ;
 int WARN (int,char*,int) ;
 int __xdp_mem_allocator_rcu_free ;
 int call_rcu (int *,int ) ;
 int mem_id_ht ;
 int mem_id_lock ;
 int mem_id_rht_params ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_pool_request_shutdown (int ) ;
 struct xdp_mem_allocator* rhashtable_lookup_fast (int ,int*,int ) ;
 int rhashtable_remove_fast (int ,int *,int ) ;
 int trace_mem_disconnect (struct xdp_mem_allocator*,int,int) ;

__attribute__((used)) static bool __mem_id_disconnect(int id, bool force)
{
 struct xdp_mem_allocator *xa;
 bool safe_to_remove = 1;

 mutex_lock(&mem_id_lock);

 xa = rhashtable_lookup_fast(mem_id_ht, &id, mem_id_rht_params);
 if (!xa) {
  mutex_unlock(&mem_id_lock);
  WARN(1, "Request remove non-existing id(%d), driver bug?", id);
  return 1;
 }
 xa->disconnect_cnt++;


 if (xa->mem.type == MEM_TYPE_PAGE_POOL)
  safe_to_remove = page_pool_request_shutdown(xa->page_pool);

 trace_mem_disconnect(xa, safe_to_remove, force);

 if ((safe_to_remove || force) &&
     !rhashtable_remove_fast(mem_id_ht, &xa->node, mem_id_rht_params))
  call_rcu(&xa->rcu, __xdp_mem_allocator_rcu_free);

 mutex_unlock(&mem_id_lock);
 return (safe_to_remove|force);
}
