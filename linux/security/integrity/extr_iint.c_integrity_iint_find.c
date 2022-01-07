
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int dummy; } ;
struct inode {int dummy; } ;


 int IS_IMA (struct inode*) ;
 struct integrity_iint_cache* __integrity_iint_find (struct inode*) ;
 int integrity_iint_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

struct integrity_iint_cache *integrity_iint_find(struct inode *inode)
{
 struct integrity_iint_cache *iint;

 if (!IS_IMA(inode))
  return ((void*)0);

 read_lock(&integrity_iint_lock);
 iint = __integrity_iint_find(inode);
 read_unlock(&integrity_iint_lock);

 return iint;
}
