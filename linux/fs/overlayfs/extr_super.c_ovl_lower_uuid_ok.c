
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid_t ;
struct TYPE_4__ {scalar_t__ index; int nfs_export; } ;
struct ovl_fs {unsigned int numlowerfs; TYPE_3__* lower_fs; scalar_t__ upper_mnt; TYPE_1__ config; } ;
struct TYPE_6__ {TYPE_2__* sb; } ;
struct TYPE_5__ {int s_uuid; } ;


 scalar_t__ uuid_equal (int *,int const*) ;

__attribute__((used)) static bool ovl_lower_uuid_ok(struct ovl_fs *ofs, const uuid_t *uuid)
{
 unsigned int i;

 if (!ofs->config.nfs_export && !(ofs->config.index && ofs->upper_mnt))
  return 1;

 for (i = 0; i < ofs->numlowerfs; i++) {





  if (uuid_equal(&ofs->lower_fs[i].sb->s_uuid, uuid))
   return 0;
 }
 return 1;
}
