
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int id; } ;
struct xdp_rxq_info {scalar_t__ reg_state; TYPE_1__ mem; } ;
struct xdp_mem_allocator {int page_pool; int node; void* allocator; TYPE_1__ mem; } ;
typedef int gfp_t ;
typedef enum xdp_mem_type { ____Placeholder_xdp_mem_type } xdp_mem_type ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int MEM_TYPE_PAGE_POOL ;
 int MEM_TYPE_ZERO_COPY ;
 int PTR_ERR (void*) ;
 scalar_t__ REG_STATE_REGISTERED ;
 int WARN (int,char*) ;
 int WARN_ON (int) ;
 int __is_supported_mem_type (int) ;
 int __mem_id_cyclic_get (int ) ;
 int __mem_id_init_hash_table () ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct xdp_mem_allocator*) ;
 struct xdp_mem_allocator* kzalloc (int,int ) ;
 int mem_id_ht ;
 int mem_id_init ;
 int mem_id_lock ;
 int mem_id_pool ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_pool_get (int ) ;
 void* rhashtable_insert_slow (int ,int*,int *) ;
 int trace_mem_connect (struct xdp_mem_allocator*,struct xdp_rxq_info*) ;

int xdp_rxq_info_reg_mem_model(struct xdp_rxq_info *xdp_rxq,
          enum xdp_mem_type type, void *allocator)
{
 struct xdp_mem_allocator *xdp_alloc;
 gfp_t gfp = GFP_KERNEL;
 int id, errno, ret;
 void *ptr;

 if (xdp_rxq->reg_state != REG_STATE_REGISTERED) {
  WARN(1, "Missing register, driver bug");
  return -EFAULT;
 }

 if (!__is_supported_mem_type(type))
  return -EOPNOTSUPP;

 xdp_rxq->mem.type = type;

 if (!allocator) {
  if (type == MEM_TYPE_PAGE_POOL || type == MEM_TYPE_ZERO_COPY)
   return -EINVAL;
  return 0;
 }


 if (!mem_id_init) {
  mutex_lock(&mem_id_lock);
  ret = __mem_id_init_hash_table();
  mutex_unlock(&mem_id_lock);
  if (ret < 0) {
   WARN_ON(1);
   return ret;
  }
 }

 xdp_alloc = kzalloc(sizeof(*xdp_alloc), gfp);
 if (!xdp_alloc)
  return -ENOMEM;

 mutex_lock(&mem_id_lock);
 id = __mem_id_cyclic_get(gfp);
 if (id < 0) {
  errno = id;
  goto err;
 }
 xdp_rxq->mem.id = id;
 xdp_alloc->mem = xdp_rxq->mem;
 xdp_alloc->allocator = allocator;


 ptr = rhashtable_insert_slow(mem_id_ht, &id, &xdp_alloc->node);
 if (IS_ERR(ptr)) {
  ida_simple_remove(&mem_id_pool, xdp_rxq->mem.id);
  xdp_rxq->mem.id = 0;
  errno = PTR_ERR(ptr);
  goto err;
 }

 if (type == MEM_TYPE_PAGE_POOL)
  page_pool_get(xdp_alloc->page_pool);

 mutex_unlock(&mem_id_lock);

 trace_mem_connect(xdp_alloc, xdp_rxq);
 return 0;
err:
 mutex_unlock(&mem_id_lock);
 kfree(xdp_alloc);
 return errno;
}
