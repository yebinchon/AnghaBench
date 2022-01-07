
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long get_nr_inodes () ;
 long get_nr_inodes_unused () ;

long get_nr_dirty_inodes(void)
{

 long nr_dirty = get_nr_inodes() - get_nr_inodes_unused();
 return nr_dirty > 0 ? nr_dirty : 0;
}
