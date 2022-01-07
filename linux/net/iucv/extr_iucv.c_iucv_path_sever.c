
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iucv_path {size_t pathid; int list; } ;


 int EIO ;
 scalar_t__ cpumask_empty (int *) ;
 scalar_t__ iucv_active_cpu ;
 int iucv_buffer_cpumask ;
 int ** iucv_path_table ;
 int iucv_sever_pathid (size_t,int *) ;
 int iucv_table_lock ;
 int list_del_init (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ smp_processor_id () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iucv_path_sever(struct iucv_path *path, u8 *userdata)
{
 int rc;

 preempt_disable();
 if (cpumask_empty(&iucv_buffer_cpumask)) {
  rc = -EIO;
  goto out;
 }
 if (iucv_active_cpu != smp_processor_id())
  spin_lock_bh(&iucv_table_lock);
 rc = iucv_sever_pathid(path->pathid, userdata);
 iucv_path_table[path->pathid] = ((void*)0);
 list_del_init(&path->list);
 if (iucv_active_cpu != smp_processor_id())
  spin_unlock_bh(&iucv_table_lock);
out:
 preempt_enable();
 return rc;
}
