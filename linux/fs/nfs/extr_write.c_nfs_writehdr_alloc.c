
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int rw_mode; } ;


 int FMODE_WRITE ;
 int GFP_KERNEL ;
 struct nfs_pgio_header* mempool_alloc (int ,int ) ;
 int memset (struct nfs_pgio_header*,int ,int) ;
 int nfs_wdata_mempool ;

__attribute__((used)) static struct nfs_pgio_header *nfs_writehdr_alloc(void)
{
 struct nfs_pgio_header *p = mempool_alloc(nfs_wdata_mempool, GFP_KERNEL);

 memset(p, 0, sizeof(*p));
 p->rw_mode = FMODE_WRITE;
 return p;
}
