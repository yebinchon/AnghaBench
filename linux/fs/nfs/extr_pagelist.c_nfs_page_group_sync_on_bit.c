
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int dummy; } ;


 int nfs_page_group_lock (struct nfs_page*) ;
 int nfs_page_group_sync_on_bit_locked (struct nfs_page*,unsigned int) ;
 int nfs_page_group_unlock (struct nfs_page*) ;

bool nfs_page_group_sync_on_bit(struct nfs_page *req, unsigned int bit)
{
 bool ret;

 nfs_page_group_lock(req);
 ret = nfs_page_group_sync_on_bit_locked(req, bit);
 nfs_page_group_unlock(req);

 return ret;
}
