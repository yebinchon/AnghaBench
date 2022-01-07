
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {int (* cleanup ) (struct subprocess_info*) ;} ;


 int kfree (struct subprocess_info*) ;
 int stub1 (struct subprocess_info*) ;

__attribute__((used)) static void call_usermodehelper_freeinfo(struct subprocess_info *info)
{
 if (info->cleanup)
  (*info->cleanup)(info);
 kfree(info);
}
