
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay_queue ;
 int kmem_cache_destroy (int ) ;
 int mempool_destroy (int ) ;
 int rpc_buffer_mempool ;
 int rpc_buffer_slabp ;
 int rpc_destroy_wait_queue (int *) ;
 int rpc_task_mempool ;
 int rpc_task_slabp ;
 int rpciod_stop () ;

void
rpc_destroy_mempool(void)
{
 rpciod_stop();
 mempool_destroy(rpc_buffer_mempool);
 mempool_destroy(rpc_task_mempool);
 kmem_cache_destroy(rpc_task_slabp);
 kmem_cache_destroy(rpc_buffer_slabp);
 rpc_destroy_wait_queue(&delay_queue);
}
