
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_trans_module {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v9fs_trans_list ;
 int v9fs_trans_lock ;

void v9fs_register_trans(struct p9_trans_module *m)
{
 spin_lock(&v9fs_trans_lock);
 list_add_tail(&m->list, &v9fs_trans_list);
 spin_unlock(&v9fs_trans_lock);
}
