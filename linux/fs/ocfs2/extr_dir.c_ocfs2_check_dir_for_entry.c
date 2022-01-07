
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dir_lookup_result {int * member_0; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int EEXIST ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_find_entry (char const*,int,struct inode*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;
 int trace_ocfs2_check_dir_for_entry (unsigned long long,int,char const*) ;

int ocfs2_check_dir_for_entry(struct inode *dir,
         const char *name,
         int namelen)
{
 int ret = 0;
 struct ocfs2_dir_lookup_result lookup = { ((void*)0), };

 trace_ocfs2_check_dir_for_entry(
  (unsigned long long)OCFS2_I(dir)->ip_blkno, namelen, name);

 if (ocfs2_find_entry(name, namelen, dir, &lookup) == 0) {
  ret = -EEXIST;
  mlog_errno(ret);
 }

 ocfs2_free_dir_lookup_result(&lookup);

 return ret;
}
