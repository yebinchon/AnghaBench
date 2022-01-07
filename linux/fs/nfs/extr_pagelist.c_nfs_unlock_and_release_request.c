
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int dummy; } ;


 int nfs_release_request (struct nfs_page*) ;
 int nfs_unlock_request (struct nfs_page*) ;

void nfs_unlock_and_release_request(struct nfs_page *req)
{
 nfs_unlock_request(req);
 nfs_release_request(req);
}
