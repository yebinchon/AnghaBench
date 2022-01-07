
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_cgroup {unsigned long soft_limit; } ;
struct kernfs_open_file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int private; } ;


 int EINVAL ;
 int MEMFILE_ATTR (int ) ;
 int MEMFILE_TYPE (int ) ;






 struct mem_cgroup* mem_cgroup_from_css (int ) ;
 int mem_cgroup_is_root (struct mem_cgroup*) ;
 int mem_cgroup_resize_max (struct mem_cgroup*,unsigned long,int) ;
 int memcg_update_kmem_max (struct mem_cgroup*,unsigned long) ;
 int memcg_update_tcp_max (struct mem_cgroup*,unsigned long) ;
 TYPE_1__* of_cft (struct kernfs_open_file*) ;
 int of_css (struct kernfs_open_file*) ;
 int page_counter_memparse (char*,char*,unsigned long*) ;
 int pr_warn_once (char*) ;
 char* strstrip (char*) ;

__attribute__((used)) static ssize_t mem_cgroup_write(struct kernfs_open_file *of,
    char *buf, size_t nbytes, loff_t off)
{
 struct mem_cgroup *memcg = mem_cgroup_from_css(of_css(of));
 unsigned long nr_pages;
 int ret;

 buf = strstrip(buf);
 ret = page_counter_memparse(buf, "-1", &nr_pages);
 if (ret)
  return ret;

 switch (MEMFILE_ATTR(of_cft(of)->private)) {
 case 133:
  if (mem_cgroup_is_root(memcg)) {
   ret = -EINVAL;
   break;
  }
  switch (MEMFILE_TYPE(of_cft(of)->private)) {
  case 130:
   ret = mem_cgroup_resize_max(memcg, nr_pages, 0);
   break;
  case 129:
   ret = mem_cgroup_resize_max(memcg, nr_pages, 1);
   break;
  case 131:
   pr_warn_once("kmem.limit_in_bytes is deprecated and will be removed. "
         "Please report your usecase to linux-mm@kvack.org if you "
         "depend on this functionality.\n");
   ret = memcg_update_kmem_max(memcg, nr_pages);
   break;
  case 128:
   ret = memcg_update_tcp_max(memcg, nr_pages);
   break;
  }
  break;
 case 132:
  memcg->soft_limit = nr_pages;
  ret = 0;
  break;
 }
 return ret ?: nbytes;
}
