
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vol_id; int ubi_num; } ;
struct ubifs_info {TYPE_1__ vi; struct ubifs_debug_info* dbg; } ;
struct ubifs_debug_info {char* dfs_dir_name; int dfs_dir; void* dfs_ro_error; void* dfs_tst_rcvry; void* dfs_chk_fs; void* dfs_chk_lprops; void* dfs_chk_orph; void* dfs_chk_index; void* dfs_chk_gen; void* dfs_dump_tnc; void* dfs_dump_budg; void* dfs_dump_lprops; } ;


 int S_IRUSR ;
 int S_IWUSR ;
 int UBIFS_DFS_DIR_LEN ;
 char* UBIFS_DFS_DIR_NAME ;
 int debugfs_create_dir (char const*,int ) ;
 void* debugfs_create_file (char const*,int,int ,struct ubifs_info*,int *) ;
 int dfs_fops ;
 int dfs_rootdir ;
 int snprintf (char*,int,char*,int ,int ) ;

void dbg_debugfs_init_fs(struct ubifs_info *c)
{
 int n;
 const char *fname;
 struct ubifs_debug_info *d = c->dbg;

 n = snprintf(d->dfs_dir_name, UBIFS_DFS_DIR_LEN + 1, UBIFS_DFS_DIR_NAME,
       c->vi.ubi_num, c->vi.vol_id);
 if (n == UBIFS_DFS_DIR_LEN) {

  return;
 }

 fname = d->dfs_dir_name;
 d->dfs_dir = debugfs_create_dir(fname, dfs_rootdir);

 fname = "dump_lprops";
 d->dfs_dump_lprops = debugfs_create_file(fname, S_IWUSR, d->dfs_dir, c,
       &dfs_fops);

 fname = "dump_budg";
 d->dfs_dump_budg = debugfs_create_file(fname, S_IWUSR, d->dfs_dir, c,
            &dfs_fops);

 fname = "dump_tnc";
 d->dfs_dump_tnc = debugfs_create_file(fname, S_IWUSR, d->dfs_dir, c,
           &dfs_fops);

 fname = "chk_general";
 d->dfs_chk_gen = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
          d->dfs_dir, c, &dfs_fops);

 fname = "chk_index";
 d->dfs_chk_index = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
            d->dfs_dir, c, &dfs_fops);

 fname = "chk_orphans";
 d->dfs_chk_orph = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
           d->dfs_dir, c, &dfs_fops);

 fname = "chk_lprops";
 d->dfs_chk_lprops = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
      d->dfs_dir, c, &dfs_fops);

 fname = "chk_fs";
 d->dfs_chk_fs = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
         d->dfs_dir, c, &dfs_fops);

 fname = "tst_recovery";
 d->dfs_tst_rcvry = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
            d->dfs_dir, c, &dfs_fops);

 fname = "ro_error";
 d->dfs_ro_error = debugfs_create_file(fname, S_IRUSR | S_IWUSR,
           d->dfs_dir, c, &dfs_fops);
}
