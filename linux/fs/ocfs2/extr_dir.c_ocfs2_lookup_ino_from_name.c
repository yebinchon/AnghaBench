
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_dir_lookup_result {int * member_0; } ;
struct inode {int dummy; } ;


 int ocfs2_find_files_on_disk (char const*,int,int *,struct inode*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;

int ocfs2_lookup_ino_from_name(struct inode *dir, const char *name,
          int namelen, u64 *blkno)
{
 int ret;
 struct ocfs2_dir_lookup_result lookup = { ((void*)0), };

 ret = ocfs2_find_files_on_disk(name, namelen, blkno, dir, &lookup);
 ocfs2_free_dir_lookup_result(&lookup);

 return ret;
}
