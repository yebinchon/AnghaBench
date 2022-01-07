
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long atomic_long_read (int *) ;
 long nfs_access_max_cachesize ;
 int nfs_access_nr_entries ;
 int nfs_do_access_cache_scan (unsigned int) ;

__attribute__((used)) static void
nfs_access_cache_enforce_limit(void)
{
 long nr_entries = atomic_long_read(&nfs_access_nr_entries);
 unsigned long diff;
 unsigned int nr_to_scan;

 if (nr_entries < 0 || nr_entries <= nfs_access_max_cachesize)
  return;
 nr_to_scan = 100;
 diff = nr_entries - nfs_access_max_cachesize;
 if (diff < nr_to_scan)
  nr_to_scan = diff;
 nfs_do_access_cache_scan(nr_to_scan);
}
