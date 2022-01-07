
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* owner; int list; } ;
struct TYPE_5__ {TYPE_3__ nfs_fl; } ;
struct file_lock {TYPE_1__ fl_u; } ;
struct TYPE_8__ {TYPE_2__* host; } ;
struct TYPE_6__ {int h_lock; } ;


 int list_del (int *) ;
 int nlmclnt_put_lockowner (TYPE_4__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nlmclnt_locks_release_private(struct file_lock *fl)
{
 spin_lock(&fl->fl_u.nfs_fl.owner->host->h_lock);
 list_del(&fl->fl_u.nfs_fl.list);
 spin_unlock(&fl->fl_u.nfs_fl.owner->host->h_lock);
 nlmclnt_put_lockowner(fl->fl_u.nfs_fl.owner);
}
