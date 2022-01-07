
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int gid_map; } ;
typedef int kgid_t ;
typedef int gid_t ;


 int __kgid_val (int ) ;
 int map_id_up (int *,int ) ;

gid_t from_kgid(struct user_namespace *targ, kgid_t kgid)
{

 return map_id_up(&targ->gid_map, __kgid_val(kgid));
}
