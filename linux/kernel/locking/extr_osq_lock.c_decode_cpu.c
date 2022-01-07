
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optimistic_spin_node {int dummy; } ;


 int osq_node ;
 struct optimistic_spin_node* per_cpu_ptr (int *,int) ;

__attribute__((used)) static inline struct optimistic_spin_node *decode_cpu(int encoded_cpu_val)
{
 int cpu_nr = encoded_cpu_val - 1;

 return per_cpu_ptr(&osq_node, cpu_nr);
}
