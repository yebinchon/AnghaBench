
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int umode_t ;
struct quad_buffer_head {int dummy; } ;
struct TYPE_12__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_10__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct inode {int i_ino; int i_mode; int i_blocks; int i_size; int i_sb; int i_gid; int i_uid; int * i_fop; int * i_op; TYPE_4__ i_atime; TYPE_3__ i_mtime; TYPE_2__ i_ctime; } ;
struct hpfs_dirent {int directory; int read_only; int hidden; int first; void* fnode; void* read_date; void* write_date; void* creation_date; } ;
struct TYPE_15__ {TYPE_6__* external; } ;
struct TYPE_13__ {int n_free_nodes; int n_used_nodes; int first_free; } ;
struct fnode {unsigned int len; TYPE_7__ u; TYPE_5__ btree; int flags; void* up; int name; } ;
struct dnode {int root_dnode; void* up; } ;
struct TYPE_9__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef int fnode_secno ;
typedef int dnode_secno ;
struct TYPE_16__ {int i_dno; int i_parent_dir; scalar_t__ i_ea_size; } ;
struct TYPE_14__ {void* file_secno; void* disk_secno; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 int FNODE_dir ;
 int S_IFDIR ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int gid_eq (int ,int ) ;
 struct hpfs_dirent* hpfs_add_de (int ,struct dnode*,char*,int,int ) ;
 int hpfs_add_dirent (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ;
 struct dnode* hpfs_alloc_dnode (int ,int,int*,struct quad_buffer_head*) ;
 struct fnode* hpfs_alloc_fnode (int ,int,int*,struct buffer_head**) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_chk_name (unsigned char const*,unsigned int*) ;
 int hpfs_dir_iops ;
 int hpfs_dir_ops ;
 int hpfs_free_dnode (int ,int) ;
 int hpfs_free_sectors (int ,int,int) ;
 TYPE_8__* hpfs_i (struct inode*) ;
 int hpfs_init_inode (struct inode*) ;
 int hpfs_lock (int ) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 int hpfs_unlock (int ) ;
 int hpfs_update_directory_times (struct inode*) ;
 int hpfs_write_inode_nolock (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int le32_to_cpu (void*) ;
 int local_get_seconds (int ) ;
 int local_to_gmt (int ,int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (int ,unsigned char const*,int) ;
 int memset (struct hpfs_dirent*,int ,int) ;
 struct inode* new_inode (int ) ;
 int set_nlink (struct inode*,int) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int hpfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 const unsigned char *name = dentry->d_name.name;
 unsigned len = dentry->d_name.len;
 struct quad_buffer_head qbh0;
 struct buffer_head *bh;
 struct hpfs_dirent *de;
 struct fnode *fnode;
 struct dnode *dnode;
 struct inode *result;
 fnode_secno fno;
 dnode_secno dno;
 int r;
 struct hpfs_dirent dee;
 int err;
 if ((err = hpfs_chk_name(name, &len))) return err==-ENOENT ? -EINVAL : err;
 hpfs_lock(dir->i_sb);
 err = -ENOSPC;
 fnode = hpfs_alloc_fnode(dir->i_sb, hpfs_i(dir)->i_dno, &fno, &bh);
 if (!fnode)
  goto bail;
 dnode = hpfs_alloc_dnode(dir->i_sb, fno, &dno, &qbh0);
 if (!dnode)
  goto bail1;
 memset(&dee, 0, sizeof dee);
 dee.directory = 1;
 if (!(mode & 0222)) dee.read_only = 1;

 dee.hidden = name[0] == '.';
 dee.fnode = cpu_to_le32(fno);
 dee.creation_date = dee.write_date = dee.read_date = cpu_to_le32(local_get_seconds(dir->i_sb));
 result = new_inode(dir->i_sb);
 if (!result)
  goto bail2;
 hpfs_init_inode(result);
 result->i_ino = fno;
 hpfs_i(result)->i_parent_dir = dir->i_ino;
 hpfs_i(result)->i_dno = dno;
 result->i_ctime.tv_sec = result->i_mtime.tv_sec = result->i_atime.tv_sec = local_to_gmt(dir->i_sb, le32_to_cpu(dee.creation_date));
 result->i_ctime.tv_nsec = 0;
 result->i_mtime.tv_nsec = 0;
 result->i_atime.tv_nsec = 0;
 hpfs_i(result)->i_ea_size = 0;
 result->i_mode |= S_IFDIR;
 result->i_op = &hpfs_dir_iops;
 result->i_fop = &hpfs_dir_ops;
 result->i_blocks = 4;
 result->i_size = 2048;
 set_nlink(result, 2);
 if (dee.read_only)
  result->i_mode &= ~0222;

 r = hpfs_add_dirent(dir, name, len, &dee);
 if (r == 1)
  goto bail3;
 if (r == -1) {
  err = -EEXIST;
  goto bail3;
 }
 fnode->len = len;
 memcpy(fnode->name, name, len > 15 ? 15 : len);
 fnode->up = cpu_to_le32(dir->i_ino);
 fnode->flags |= FNODE_dir;
 fnode->btree.n_free_nodes = 7;
 fnode->btree.n_used_nodes = 1;
 fnode->btree.first_free = cpu_to_le16(0x14);
 fnode->u.external[0].disk_secno = cpu_to_le32(dno);
 fnode->u.external[0].file_secno = cpu_to_le32(-1);
 dnode->root_dnode = 1;
 dnode->up = cpu_to_le32(fno);
 de = hpfs_add_de(dir->i_sb, dnode, "\001\001", 2, 0);
 de->creation_date = de->write_date = de->read_date = cpu_to_le32(local_get_seconds(dir->i_sb));
 if (!(mode & 0222)) de->read_only = 1;
 de->first = de->directory = 1;

 de->fnode = cpu_to_le32(fno);
 mark_buffer_dirty(bh);
 brelse(bh);
 hpfs_mark_4buffers_dirty(&qbh0);
 hpfs_brelse4(&qbh0);
 inc_nlink(dir);
 insert_inode_hash(result);

 if (!uid_eq(result->i_uid, current_fsuid()) ||
     !gid_eq(result->i_gid, current_fsgid()) ||
     result->i_mode != (mode | S_IFDIR)) {
  result->i_uid = current_fsuid();
  result->i_gid = current_fsgid();
  result->i_mode = mode | S_IFDIR;
  hpfs_write_inode_nolock(result);
 }
 hpfs_update_directory_times(dir);
 d_instantiate(dentry, result);
 hpfs_unlock(dir->i_sb);
 return 0;
bail3:
 iput(result);
bail2:
 hpfs_brelse4(&qbh0);
 hpfs_free_dnode(dir->i_sb, dno);
bail1:
 brelse(bh);
 hpfs_free_sectors(dir->i_sb, fno, 1);
bail:
 hpfs_unlock(dir->i_sb);
 return err;
}
