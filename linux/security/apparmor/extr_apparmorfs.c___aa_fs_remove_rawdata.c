
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aa_loaddata {TYPE_1__* ns; int list; } ;
struct TYPE_2__ {int lock; } ;


 int AA_BUG (int ) ;
 int aa_put_ns (TYPE_1__*) ;
 int list_del_init (int *) ;
 int mutex_is_locked (int *) ;
 int remove_rawdata_dents (struct aa_loaddata*) ;

void __aa_fs_remove_rawdata(struct aa_loaddata *rawdata)
{
 AA_BUG(rawdata->ns && !mutex_is_locked(&rawdata->ns->lock));

 if (rawdata->ns) {
  remove_rawdata_dents(rawdata);
  list_del_init(&rawdata->list);
  aa_put_ns(rawdata->ns);
  rawdata->ns = ((void*)0);
 }
}
