
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int kmem_cache_free (int ,struct task_struct*) ;
 int task_struct_cachep ;

__attribute__((used)) static inline void free_task_struct(struct task_struct *tsk)
{
 kmem_cache_free(task_struct_cachep, tsk);
}
