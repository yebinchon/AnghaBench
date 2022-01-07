
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_segmap_info {int segmap_lock; int free_segmap; } ;


 unsigned int find_next_bit (int ,unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline unsigned int find_next_inuse(struct free_segmap_info *free_i,
  unsigned int max, unsigned int segno)
{
 unsigned int ret;
 spin_lock(&free_i->segmap_lock);
 ret = find_next_bit(free_i->free_segmap, max, segno);
 spin_unlock(&free_i->segmap_lock);
 return ret;
}
