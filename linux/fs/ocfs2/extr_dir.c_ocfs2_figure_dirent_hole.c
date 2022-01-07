
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_entry {int name_len; int rec_len; int inode; } ;


 unsigned int OCFS2_DIR_REC_LEN (int ) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static unsigned int ocfs2_figure_dirent_hole(struct ocfs2_dir_entry *de)
{
 unsigned int hole;

 if (le64_to_cpu(de->inode) == 0)
  hole = le16_to_cpu(de->rec_len);
 else
  hole = le16_to_cpu(de->rec_len) -
   OCFS2_DIR_REC_LEN(de->name_len);

 return hole;
}
