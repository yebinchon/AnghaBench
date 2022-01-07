
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_dir_lookup_result {TYPE_1__* dl_entry; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;
struct TYPE_3__ {int inode; } ;


 int ENOENT ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int le64_to_cpu (int ) ;
 int ocfs2_find_entry (char const*,int,struct inode*,struct ocfs2_dir_lookup_result*) ;
 int trace_ocfs2_find_files_on_disk (int,char const*,int *,unsigned long long) ;

int ocfs2_find_files_on_disk(const char *name,
        int namelen,
        u64 *blkno,
        struct inode *inode,
        struct ocfs2_dir_lookup_result *lookup)
{
 int status = -ENOENT;

 trace_ocfs2_find_files_on_disk(namelen, name, blkno,
    (unsigned long long)OCFS2_I(inode)->ip_blkno);

 status = ocfs2_find_entry(name, namelen, inode, lookup);
 if (status)
  goto leave;

 *blkno = le64_to_cpu(lookup->dl_entry->inode);

 status = 0;
leave:

 return status;
}
