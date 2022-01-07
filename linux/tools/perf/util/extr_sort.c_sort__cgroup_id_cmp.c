
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ino; int dev; } ;
struct hist_entry {TYPE_1__ cgroup_id; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ _sort__cgroup_dev_cmp (int ,int ) ;
 scalar_t__ _sort__cgroup_inode_cmp (int ,int ) ;

__attribute__((used)) static int64_t
sort__cgroup_id_cmp(struct hist_entry *left, struct hist_entry *right)
{
 int64_t ret;

 ret = _sort__cgroup_dev_cmp(right->cgroup_id.dev, left->cgroup_id.dev);
 if (ret != 0)
  return ret;

 return _sort__cgroup_inode_cmp(right->cgroup_id.ino,
           left->cgroup_id.ino);
}
