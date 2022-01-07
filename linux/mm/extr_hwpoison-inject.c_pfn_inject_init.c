
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 int debugfs_create_u64 (char*,int,int ,int *) ;
 int hwpoison_dir ;
 int hwpoison_filter_dev_major ;
 int hwpoison_filter_dev_minor ;
 int hwpoison_filter_enable ;
 int hwpoison_filter_flags_mask ;
 int hwpoison_filter_flags_value ;
 int hwpoison_filter_memcg ;
 int hwpoison_fops ;
 int unpoison_fops ;

__attribute__((used)) static int pfn_inject_init(void)
{
 hwpoison_dir = debugfs_create_dir("hwpoison", ((void*)0));






 debugfs_create_file("corrupt-pfn", 0200, hwpoison_dir, ((void*)0),
       &hwpoison_fops);

 debugfs_create_file("unpoison-pfn", 0200, hwpoison_dir, ((void*)0),
       &unpoison_fops);

 debugfs_create_u32("corrupt-filter-enable", 0600, hwpoison_dir,
      &hwpoison_filter_enable);

 debugfs_create_u32("corrupt-filter-dev-major", 0600, hwpoison_dir,
      &hwpoison_filter_dev_major);

 debugfs_create_u32("corrupt-filter-dev-minor", 0600, hwpoison_dir,
      &hwpoison_filter_dev_minor);

 debugfs_create_u64("corrupt-filter-flags-mask", 0600, hwpoison_dir,
      &hwpoison_filter_flags_mask);

 debugfs_create_u64("corrupt-filter-flags-value", 0600, hwpoison_dir,
      &hwpoison_filter_flags_value);






 return 0;
}
