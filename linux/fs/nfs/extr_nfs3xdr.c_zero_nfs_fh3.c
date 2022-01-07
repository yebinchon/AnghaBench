
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {int dummy; } ;


 int memset (struct nfs_fh*,int ,int) ;

__attribute__((used)) static void zero_nfs_fh3(struct nfs_fh *fh)
{
 memset(fh, 0, sizeof(*fh));
}
