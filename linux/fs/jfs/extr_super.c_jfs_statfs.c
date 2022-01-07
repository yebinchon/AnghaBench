
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void** val; } ;
struct kstatfs {int f_bfree; int f_bavail; int f_namelen; TYPE_2__ f_fsid; void* f_ffree; void* f_files; int f_blocks; int f_bsize; int f_type; } ;
struct jfs_sb_info {int uuid; TYPE_1__* bmap; int bsize; int ipimap; } ;
struct inomap {int im_l2nbperiext; int im_numfree; int im_numinos; } ;
struct dentry {int d_sb; } ;
typedef void* s64 ;
struct TYPE_6__ {struct inomap* i_imap; } ;
struct TYPE_4__ {int db_nfree; int db_mapsize; } ;


 TYPE_3__* JFS_IP (int ) ;
 int JFS_NAME_MAX ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int JFS_SUPER_MAGIC ;
 int L2INOSPEREXT ;
 void* atomic_read (int *) ;
 void* crc32_le (int ,char*,int) ;
 int jfs_info (char*) ;
 void* min (void*,void*) ;

__attribute__((used)) static int jfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct jfs_sb_info *sbi = JFS_SBI(dentry->d_sb);
 s64 maxinodes;
 struct inomap *imap = JFS_IP(sbi->ipimap)->i_imap;

 jfs_info("In jfs_statfs");
 buf->f_type = JFS_SUPER_MAGIC;
 buf->f_bsize = sbi->bsize;
 buf->f_blocks = sbi->bmap->db_mapsize;
 buf->f_bfree = sbi->bmap->db_nfree;
 buf->f_bavail = sbi->bmap->db_nfree;
 maxinodes = min((s64) atomic_read(&imap->im_numinos) +
   ((sbi->bmap->db_nfree >> imap->im_l2nbperiext)
    << L2INOSPEREXT), (s64) 0xffffffffLL);
 buf->f_files = maxinodes;
 buf->f_ffree = maxinodes - (atomic_read(&imap->im_numinos) -
        atomic_read(&imap->im_numfree));
 buf->f_fsid.val[0] = crc32_le(0, (char *)&sbi->uuid,
          sizeof(sbi->uuid)/2);
 buf->f_fsid.val[1] = crc32_le(0,
          (char *)&sbi->uuid + sizeof(sbi->uuid)/2,
          sizeof(sbi->uuid)/2);

 buf->f_namelen = JFS_NAME_MAX;
 return 0;
}
