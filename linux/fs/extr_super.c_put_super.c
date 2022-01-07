
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int __put_super (struct super_block*) ;
 int sb_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_super(struct super_block *sb)
{
 spin_lock(&sb_lock);
 __put_super(sb);
 spin_unlock(&sb_lock);
}
