
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int next_ino; scalar_t__* inodes; int lock; } ;
typedef scalar_t__ ino_t ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int wbuf_has_ino(struct ubifs_wbuf *wbuf, ino_t inum)
{
 int i, ret = 0;

 spin_lock(&wbuf->lock);
 for (i = 0; i < wbuf->next_ino; i++)
  if (inum == wbuf->inodes[i]) {
   ret = 1;
   break;
  }
 spin_unlock(&wbuf->lock);

 return ret;
}
