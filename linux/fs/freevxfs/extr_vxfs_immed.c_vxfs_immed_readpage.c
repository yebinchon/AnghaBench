
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
struct TYPE_4__ {int vi_immed; } ;
struct vxfs_inode_info {TYPE_2__ vii_immed; } ;
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct file {int dummy; } ;
typedef int caddr_t ;
struct TYPE_3__ {int host; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SetPageUptodate (struct page*) ;
 struct vxfs_inode_info* VXFS_INO (int ) ;
 int flush_dcache_page (struct page*) ;
 int kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (int ,int,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
vxfs_immed_readpage(struct file *fp, struct page *pp)
{
 struct vxfs_inode_info *vip = VXFS_INO(pp->mapping->host);
 u_int64_t offset = (u_int64_t)pp->index << PAGE_SHIFT;
 caddr_t kaddr;

 kaddr = kmap(pp);
 memcpy(kaddr, vip->vii_immed.vi_immed + offset, PAGE_SIZE);
 kunmap(pp);

 flush_dcache_page(pp);
 SetPageUptodate(pp);
        unlock_page(pp);

 return 0;
}
