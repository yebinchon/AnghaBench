
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int orphan_lock; } ;
typedef int ino_t ;


 int lookup_orphan (struct ubifs_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool dbg_find_orphan(struct ubifs_info *c, ino_t inum)
{
 bool found = 0;

 spin_lock(&c->orphan_lock);
 found = !!lookup_orphan(c, inum);
 spin_unlock(&c->orphan_lock);

 return found;
}
