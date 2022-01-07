
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int EMFILE ;
 int ENOSPC ;
 int GFP_ATOMIC ;
 int MINORBITS ;
 int MKDEV (int ,int) ;
 int ida_alloc_range (int *,int,int,int ) ;
 int unnamed_dev_ida ;

int get_anon_bdev(dev_t *p)
{
 int dev;





 dev = ida_alloc_range(&unnamed_dev_ida, 1, (1 << MINORBITS) - 1,
   GFP_ATOMIC);
 if (dev == -ENOSPC)
  dev = -EMFILE;
 if (dev < 0)
  return dev;

 *p = MKDEV(0, dev);
 return 0;
}
