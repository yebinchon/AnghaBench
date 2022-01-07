
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap {int dax_dev; int bdev; } ;
typedef int sector_t ;
typedef int pgoff_t ;
typedef int pfn_t ;
typedef int loff_t ;


 int EINVAL ;
 size_t PFN_PHYS (long) ;
 int PHYS_PFN (size_t) ;
 int bdev_dax_pgoff (int ,int const,size_t,int *) ;
 long dax_direct_access (int ,int ,int,int *,int *) ;
 int dax_iomap_sector (struct iomap*,int ) ;
 int dax_read_lock () ;
 int dax_read_unlock (int) ;
 int pfn_t_devmap (int ) ;
 int pfn_t_to_pfn (int ) ;

__attribute__((used)) static int dax_iomap_pfn(struct iomap *iomap, loff_t pos, size_t size,
    pfn_t *pfnp)
{
 const sector_t sector = dax_iomap_sector(iomap, pos);
 pgoff_t pgoff;
 int id, rc;
 long length;

 rc = bdev_dax_pgoff(iomap->bdev, sector, size, &pgoff);
 if (rc)
  return rc;
 id = dax_read_lock();
 length = dax_direct_access(iomap->dax_dev, pgoff, PHYS_PFN(size),
       ((void*)0), pfnp);
 if (length < 0) {
  rc = length;
  goto out;
 }
 rc = -EINVAL;
 if (PFN_PHYS(length) < size)
  goto out;
 if (pfn_t_to_pfn(*pfnp) & (PHYS_PFN(size)-1))
  goto out;

 if (length > 1 && !pfn_t_devmap(*pfnp))
  goto out;
 rc = 0;
out:
 dax_read_unlock(id);
 return rc;
}
