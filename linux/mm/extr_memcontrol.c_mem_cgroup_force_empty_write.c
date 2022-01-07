
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct kernfs_open_file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EINVAL ;
 scalar_t__ mem_cgroup_force_empty (struct mem_cgroup*) ;
 struct mem_cgroup* mem_cgroup_from_css (int ) ;
 scalar_t__ mem_cgroup_is_root (struct mem_cgroup*) ;
 int of_css (struct kernfs_open_file*) ;

__attribute__((used)) static ssize_t mem_cgroup_force_empty_write(struct kernfs_open_file *of,
         char *buf, size_t nbytes,
         loff_t off)
{
 struct mem_cgroup *memcg = mem_cgroup_from_css(of_css(of));

 if (mem_cgroup_is_root(memcg))
  return -EINVAL;
 return mem_cgroup_force_empty(memcg) ?: nbytes;
}
