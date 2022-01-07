
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_completion {int dummy; } ;
typedef int gfp_t ;


 struct nfs_io_completion* kmalloc (int,int ) ;

__attribute__((used)) static struct nfs_io_completion *nfs_io_completion_alloc(gfp_t gfp_flags)
{
 return kmalloc(sizeof(struct nfs_io_completion), gfp_flags);
}
