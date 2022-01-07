
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_2__* dentry; } ;
struct TYPE_4__ {int d_flags; TYPE_1__* d_op; } ;
struct TYPE_3__ {int (* d_manage ) (struct path const*,int) ;} ;


 int DCACHE_MANAGE_TRANSIT ;
 int stub1 (struct path const*,int) ;

__attribute__((used)) static inline int managed_dentry_rcu(const struct path *path)
{
 return (path->dentry->d_flags & DCACHE_MANAGE_TRANSIT) ?
  path->dentry->d_op->d_manage(path, 1) : 0;
}
