
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_bufmap {int dummy; } ;


 struct orangefs_bufmap* __orangefs_bufmap ;
 int orangefs_bufmap_free (struct orangefs_bufmap*) ;
 int orangefs_bufmap_lock ;
 int orangefs_bufmap_unmap (struct orangefs_bufmap*) ;
 int readdir_map ;
 int run_down (int *) ;
 int rw_map ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void orangefs_bufmap_run_down(void)
{
 struct orangefs_bufmap *bufmap = __orangefs_bufmap;
 if (!bufmap)
  return;
 run_down(&rw_map);
 run_down(&readdir_map);
 spin_lock(&orangefs_bufmap_lock);
 __orangefs_bufmap = ((void*)0);
 spin_unlock(&orangefs_bufmap_lock);
 orangefs_bufmap_unmap(bufmap);
 orangefs_bufmap_free(bufmap);
}
