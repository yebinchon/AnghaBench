
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_bufmap {int desc_size; } ;


 struct orangefs_bufmap* __orangefs_bufmap ;
 int orangefs_bufmap_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int orangefs_bufmap_size_query(void)
{
 struct orangefs_bufmap *bufmap;
 int size = 0;
 spin_lock(&orangefs_bufmap_lock);
 bufmap = __orangefs_bufmap;
 if (bufmap)
  size = bufmap->desc_size;
 spin_unlock(&orangefs_bufmap_lock);
 return size;
}
