
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_createdata {int dummy; } ;


 int kfree (struct nfs_createdata const*) ;

__attribute__((used)) static void nfs_free_createdata(const struct nfs_createdata *data)
{
 kfree(data);
}
