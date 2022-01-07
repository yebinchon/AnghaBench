
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_kernel_op_s {int slot_to_free; } ;


 int op_release (struct orangefs_kernel_op_s*) ;
 int orangefs_bufmap_put (int ) ;

__attribute__((used)) static inline void put_cancel(struct orangefs_kernel_op_s *op)
{
 orangefs_bufmap_put(op->slot_to_free);
 op_release(op);
}
