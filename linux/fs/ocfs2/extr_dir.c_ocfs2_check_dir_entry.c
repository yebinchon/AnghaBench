
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_dir_entry {int name_len; int inode; int rec_len; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;
struct TYPE_3__ {int s_blocksize; } ;


 int ML_ERROR ;
 int const OCFS2_DIR_REC_LEN (int) ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,char const*,unsigned long,unsigned long long,int const,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ocfs2_check_dir_entry(struct inode * dir,
     struct ocfs2_dir_entry * de,
     struct buffer_head * bh,
     unsigned long offset)
{
 const char *error_msg = ((void*)0);
 const int rlen = le16_to_cpu(de->rec_len);

 if (unlikely(rlen < OCFS2_DIR_REC_LEN(1)))
  error_msg = "rec_len is smaller than minimal";
 else if (unlikely(rlen % 4 != 0))
  error_msg = "rec_len % 4 != 0";
 else if (unlikely(rlen < OCFS2_DIR_REC_LEN(de->name_len)))
  error_msg = "rec_len is too small for name_len";
 else if (unlikely(
   ((char *) de - bh->b_data) + rlen > dir->i_sb->s_blocksize))
  error_msg = "directory entry across blocks";

 if (unlikely(error_msg != ((void*)0)))
  mlog(ML_ERROR, "bad entry in directory #%llu: %s - "
       "offset=%lu, inode=%llu, rec_len=%d, name_len=%d\n",
       (unsigned long long)OCFS2_I(dir)->ip_blkno, error_msg,
       offset, (unsigned long long)le64_to_cpu(de->inode), rlen,
       de->name_len);

 return error_msg == ((void*)0) ? 1 : 0;
}
