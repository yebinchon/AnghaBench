
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_file {int * fi_access; int fi_lock; } ;


 int NFS4_SHARE_ACCESS_READ ;
 int NFS4_SHARE_ACCESS_WRITE ;
 size_t O_RDONLY ;
 size_t O_WRONLY ;
 int atomic_inc (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void
__nfs4_file_get_access(struct nfs4_file *fp, u32 access)
{
 lockdep_assert_held(&fp->fi_lock);

 if (access & NFS4_SHARE_ACCESS_WRITE)
  atomic_inc(&fp->fi_access[O_WRONLY]);
 if (access & NFS4_SHARE_ACCESS_READ)
  atomic_inc(&fp->fi_access[O_RDONLY]);
}
