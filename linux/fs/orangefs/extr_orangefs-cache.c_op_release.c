
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_kernel_op_s {int tag; } ;


 int GOSSIP_CACHE_DEBUG ;
 int gossip_debug (int ,char*,struct orangefs_kernel_op_s*,int ) ;
 int gossip_err (char*) ;
 int kmem_cache_free (int ,struct orangefs_kernel_op_s*) ;
 int llu (int ) ;
 int op_cache ;

void op_release(struct orangefs_kernel_op_s *orangefs_op)
{
 if (orangefs_op) {
  gossip_debug(GOSSIP_CACHE_DEBUG,
        "Releasing OP (%p: %llu)\n",
        orangefs_op,
        llu(orangefs_op->tag));
  kmem_cache_free(op_cache, orangefs_op);
 } else {
  gossip_err("NULL pointer in op_release\n");
 }
}
