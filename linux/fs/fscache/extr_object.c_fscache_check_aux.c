
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct fscache_object {TYPE_2__* cookie; } ;
typedef int loff_t ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
struct TYPE_4__ {int netfs_data; TYPE_1__* def; } ;
struct TYPE_3__ {int (* check_aux ) (int ,void const*,int ,int ) ;} ;


 int BUG () ;



 int fscache_n_checkaux_none ;
 int fscache_n_checkaux_obsolete ;
 int fscache_n_checkaux_okay ;
 int fscache_n_checkaux_update ;
 int fscache_stat (int *) ;
 int stub1 (int ,void const*,int ,int ) ;

enum fscache_checkaux fscache_check_aux(struct fscache_object *object,
     const void *data, uint16_t datalen,
     loff_t object_size)
{
 enum fscache_checkaux result;

 if (!object->cookie->def->check_aux) {
  fscache_stat(&fscache_n_checkaux_none);
  return 128;
 }

 result = object->cookie->def->check_aux(object->cookie->netfs_data,
      data, datalen, object_size);
 switch (result) {

 case 128:
  fscache_stat(&fscache_n_checkaux_okay);
  break;


 case 130:
  fscache_stat(&fscache_n_checkaux_update);
  break;


 case 129:
  fscache_stat(&fscache_n_checkaux_obsolete);
  break;

 default:
  BUG();
 }

 return result;
}
