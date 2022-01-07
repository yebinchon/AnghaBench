
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_entry {int rec_len; int name_len; int inode; } ;


 unsigned int OCFS2_DIR_REC_LEN (int ) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static inline int ocfs2_dirent_would_fit(struct ocfs2_dir_entry *de,
      unsigned int new_rec_len)
{
 unsigned int de_really_used;


 if (le64_to_cpu(de->inode) == 0 &&
     le16_to_cpu(de->rec_len) >= new_rec_len)
  return 1;





 de_really_used = OCFS2_DIR_REC_LEN(de->name_len);
 if (le16_to_cpu(de->rec_len) >= (de_really_used + new_rec_len))
     return 1;

 return 0;
}
