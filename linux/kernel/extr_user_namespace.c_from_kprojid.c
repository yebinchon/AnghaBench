
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int projid_map; } ;
typedef int projid_t ;
typedef int kprojid_t ;


 int __kprojid_val (int ) ;
 int map_id_up (int *,int ) ;

projid_t from_kprojid(struct user_namespace *targ, kprojid_t kprojid)
{

 return map_id_up(&targ->projid_map, __kprojid_val(kprojid));
}
