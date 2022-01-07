
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct resource {int start; int end; int flags; struct resource* child; } ;
typedef int loff_t ;


 int CONFIG_IO_STRICT_DEVMEM ;
 int IORESOURCE_BUSY ;
 int IORESOURCE_EXCLUSIVE ;
 scalar_t__ IS_ENABLED (int ) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 struct resource iomem_resource ;
 struct resource* r_next (int *,struct resource*,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int resource_lock ;
 int strict_iomem_checks ;

bool iomem_is_exclusive(u64 addr)
{
 struct resource *p = &iomem_resource;
 bool err = 0;
 loff_t l;
 int size = PAGE_SIZE;

 if (!strict_iomem_checks)
  return 0;

 addr = addr & PAGE_MASK;

 read_lock(&resource_lock);
 for (p = p->child; p ; p = r_next(((void*)0), p, &l)) {




  if (p->start >= addr + size)
   break;
  if (p->end < addr)
   continue;





  if ((p->flags & IORESOURCE_BUSY) == 0)
   continue;
  if (IS_ENABLED(CONFIG_IO_STRICT_DEVMEM)
    || p->flags & IORESOURCE_EXCLUSIVE) {
   err = 1;
   break;
  }
 }
 read_unlock(&resource_lock);

 return err;
}
