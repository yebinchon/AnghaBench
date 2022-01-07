
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int gid; int uid; } ;
typedef int kuid_t ;
typedef int kgid_t ;



void proc_set_user(struct proc_dir_entry *de, kuid_t uid, kgid_t gid)
{
 de->uid = uid;
 de->gid = gid;
}
