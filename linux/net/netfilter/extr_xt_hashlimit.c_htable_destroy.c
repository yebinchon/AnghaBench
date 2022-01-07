
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_htable {int name; int gc_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int htable_remove_proc_entry (struct xt_hashlimit_htable*) ;
 int htable_selective_cleanup (struct xt_hashlimit_htable*,int ) ;
 int kfree (int ) ;
 int select_all ;
 int vfree (struct xt_hashlimit_htable*) ;

__attribute__((used)) static void htable_destroy(struct xt_hashlimit_htable *hinfo)
{
 cancel_delayed_work_sync(&hinfo->gc_work);
 htable_remove_proc_entry(hinfo);
 htable_selective_cleanup(hinfo, select_all);
 kfree(hinfo->name);
 vfree(hinfo);
}
