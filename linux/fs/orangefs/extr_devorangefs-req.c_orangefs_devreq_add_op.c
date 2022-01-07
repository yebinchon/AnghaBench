
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_kernel_op_s {int list; int tag; } ;


 int hash_func (int ,int ) ;
 int hash_table_size ;
 int list_add_tail (int *,int *) ;
 int * orangefs_htable_ops_in_progress ;

__attribute__((used)) static void orangefs_devreq_add_op(struct orangefs_kernel_op_s *op)
{
 int index = hash_func(op->tag, hash_table_size);

 list_add_tail(&op->list, &orangefs_htable_ops_in_progress[index]);
}
