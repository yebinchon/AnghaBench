
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int dummy; } ;
typedef int __u32 ;


 int EMBED_FH_OFF ;

__attribute__((used)) static struct nfs_fh *nfs_exp_embedfh(__u32 *p)
{
 return (struct nfs_fh *)(p + EMBED_FH_OFF);
}
