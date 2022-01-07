
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_IRUSR ;
 int S_IWUSR ;
 int debugfs_create_dir (char const*,int *) ;
 void* debugfs_create_file (char const*,int,int ,int *,int *) ;
 void* dfs_chk_fs ;
 void* dfs_chk_gen ;
 void* dfs_chk_index ;
 void* dfs_chk_lprops ;
 void* dfs_chk_orph ;
 int dfs_global_fops ;
 int dfs_rootdir ;
 void* dfs_tst_rcvry ;

void dbg_debugfs_init(void)
{
 const char *fname;

 fname = "ubifs";
 dfs_rootdir = debugfs_create_dir(fname, ((void*)0));

 fname = "chk_general";
 dfs_chk_gen = debugfs_create_file(fname, S_IRUSR | S_IWUSR, dfs_rootdir,
       ((void*)0), &dfs_global_fops);

 fname = "chk_index";
 dfs_chk_index = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
         dfs_rootdir, ((void*)0), &dfs_global_fops);

 fname = "chk_orphans";
 dfs_chk_orph = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
        dfs_rootdir, ((void*)0), &dfs_global_fops);

 fname = "chk_lprops";
 dfs_chk_lprops = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
          dfs_rootdir, ((void*)0), &dfs_global_fops);

 fname = "chk_fs";
 dfs_chk_fs = debugfs_create_file(fname, S_IRUSR | S_IWUSR, dfs_rootdir,
      ((void*)0), &dfs_global_fops);

 fname = "tst_recovery";
 dfs_tst_rcvry = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
         dfs_rootdir, ((void*)0), &dfs_global_fops);
}
