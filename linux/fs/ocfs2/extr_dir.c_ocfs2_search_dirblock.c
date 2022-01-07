
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_entry {int rec_len; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int le16_to_cpu (int ) ;
 int ocfs2_check_dir_entry (struct inode*,struct ocfs2_dir_entry*,struct buffer_head*,unsigned long) ;
 scalar_t__ ocfs2_match (int,char const*,struct ocfs2_dir_entry*) ;
 int trace_ocfs2_search_dirblock (int) ;

__attribute__((used)) static inline int ocfs2_search_dirblock(struct buffer_head *bh,
     struct inode *dir,
     const char *name, int namelen,
     unsigned long offset,
     char *first_de,
     unsigned int bytes,
     struct ocfs2_dir_entry **res_dir)
{
 struct ocfs2_dir_entry *de;
 char *dlimit, *de_buf;
 int de_len;
 int ret = 0;

 de_buf = first_de;
 dlimit = de_buf + bytes;

 while (de_buf < dlimit) {



  de = (struct ocfs2_dir_entry *) de_buf;

  if (de_buf + namelen <= dlimit &&
      ocfs2_match(namelen, name, de)) {

   if (!ocfs2_check_dir_entry(dir, de, bh, offset)) {
    ret = -1;
    goto bail;
   }
   *res_dir = de;
   ret = 1;
   goto bail;
  }


  de_len = le16_to_cpu(de->rec_len);
  if (de_len <= 0) {
   ret = -1;
   goto bail;
  }

  de_buf += de_len;
  offset += de_len;
 }

bail:
 trace_ocfs2_search_dirblock(ret);
 return ret;
}
