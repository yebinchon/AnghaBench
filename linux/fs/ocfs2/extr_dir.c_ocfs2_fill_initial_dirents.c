
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dir_entry {int name_len; int name; void* rec_len; void* inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int ip_blkno; } ;


 int OCFS2_DIR_REC_LEN (int) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int S_IFDIR ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le64 (int ) ;
 int le16_to_cpu (void*) ;
 int ocfs2_set_de_type (struct ocfs2_dir_entry*,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct ocfs2_dir_entry *ocfs2_fill_initial_dirents(struct inode *inode,
         struct inode *parent,
         char *start,
         unsigned int size)
{
 struct ocfs2_dir_entry *de = (struct ocfs2_dir_entry *)start;

 de->inode = cpu_to_le64(OCFS2_I(inode)->ip_blkno);
 de->name_len = 1;
 de->rec_len =
  cpu_to_le16(OCFS2_DIR_REC_LEN(de->name_len));
 strcpy(de->name, ".");
 ocfs2_set_de_type(de, S_IFDIR);

 de = (struct ocfs2_dir_entry *) ((char *)de + le16_to_cpu(de->rec_len));
 de->inode = cpu_to_le64(OCFS2_I(parent)->ip_blkno);
 de->rec_len = cpu_to_le16(size - OCFS2_DIR_REC_LEN(1));
 de->name_len = 2;
 strcpy(de->name, "..");
 ocfs2_set_de_type(de, S_IFDIR);

 return de;
}
