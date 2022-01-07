
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_bufmap {int desc_shift; } ;


 struct orangefs_bufmap* __orangefs_bufmap ;
 int orangefs_bufmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int orangefs_bufmap_shift_query(void)
{
 struct orangefs_bufmap *bufmap;
 int shift = 0;
 spin_lock(&orangefs_bufmap_lock);
 bufmap = __orangefs_bufmap;
 if (bufmap)
  shift = bufmap->desc_shift;
 spin_unlock(&orangefs_bufmap_lock);
 return shift;
}
