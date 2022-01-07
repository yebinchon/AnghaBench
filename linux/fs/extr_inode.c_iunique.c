
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef unsigned int ino_t ;
typedef int DEFINE_SPINLOCK ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_inode_iunique (struct super_block*,unsigned int) ;

ino_t iunique(struct super_block *sb, ino_t max_reserved)
{





 static DEFINE_SPINLOCK(iunique_lock);
 static unsigned int counter;
 ino_t res;

 spin_lock(&iunique_lock);
 do {
  if (counter <= max_reserved)
   counter = max_reserved + 1;
  res = counter++;
 } while (!test_inode_iunique(sb, res));
 spin_unlock(&iunique_lock);

 return res;
}
