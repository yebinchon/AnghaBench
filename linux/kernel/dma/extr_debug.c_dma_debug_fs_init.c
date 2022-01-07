
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int debugfs_create_bool (char*,int,struct dentry*,int *) ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,int *,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int dump_fops ;
 int error_count ;
 int filter_fops ;
 int global_disable ;
 int min_free_entries ;
 int nr_total_entries ;
 int num_free_entries ;
 int show_all_errors ;
 int show_num_errors ;

__attribute__((used)) static void dma_debug_fs_init(void)
{
 struct dentry *dentry = debugfs_create_dir("dma-api", ((void*)0));

 debugfs_create_bool("disabled", 0444, dentry, &global_disable);
 debugfs_create_u32("error_count", 0444, dentry, &error_count);
 debugfs_create_u32("all_errors", 0644, dentry, &show_all_errors);
 debugfs_create_u32("num_errors", 0644, dentry, &show_num_errors);
 debugfs_create_u32("num_free_entries", 0444, dentry, &num_free_entries);
 debugfs_create_u32("min_free_entries", 0444, dentry, &min_free_entries);
 debugfs_create_u32("nr_total_entries", 0444, dentry, &nr_total_entries);
 debugfs_create_file("driver_filter", 0644, dentry, ((void*)0), &filter_fops);
 debugfs_create_file("dump", 0444, dentry, ((void*)0), &dump_fops);
}
