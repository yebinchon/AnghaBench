
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct nfs_dns_ent {struct cache_head h; scalar_t__ addrlen; scalar_t__ namelen; int * hostname; } ;


 int GFP_KERNEL ;
 struct nfs_dns_ent* kmalloc (int,int ) ;

__attribute__((used)) static struct cache_head *nfs_dns_ent_alloc(void)
{
 struct nfs_dns_ent *item = kmalloc(sizeof(*item), GFP_KERNEL);

 if (item != ((void*)0)) {
  item->hostname = ((void*)0);
  item->namelen = 0;
  item->addrlen = 0;
  return &item->h;
 }
 return ((void*)0);
}
