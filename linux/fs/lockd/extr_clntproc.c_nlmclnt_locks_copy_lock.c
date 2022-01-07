
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* owner; int list; int state; } ;
struct TYPE_8__ {TYPE_2__ nfs_fl; } ;
struct file_lock {TYPE_3__ fl_u; } ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_6__ {int h_lock; int h_granted; } ;


 int list_add_tail (int *,int *) ;
 TYPE_4__* nlmclnt_get_lockowner (TYPE_4__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nlmclnt_locks_copy_lock(struct file_lock *new, struct file_lock *fl)
{
 spin_lock(&fl->fl_u.nfs_fl.owner->host->h_lock);
 new->fl_u.nfs_fl.state = fl->fl_u.nfs_fl.state;
 new->fl_u.nfs_fl.owner = nlmclnt_get_lockowner(fl->fl_u.nfs_fl.owner);
 list_add_tail(&new->fl_u.nfs_fl.list, &fl->fl_u.nfs_fl.owner->host->h_granted);
 spin_unlock(&fl->fl_u.nfs_fl.owner->host->h_lock);
}
