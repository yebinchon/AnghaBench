
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void posix_acl ;
struct inode {TYPE_1__* i_op; } ;
struct TYPE_2__ {void* (* get_acl ) (struct inode*,int) ;} ;


 void* ACL_NOT_CACHED ;
 scalar_t__ IS_ERR (void*) ;
 int IS_POSIXACL (struct inode*) ;
 void** acl_by_type (struct inode*,int) ;
 void* cmpxchg (void**,void*,void*) ;
 int current ;
 void* get_cached_acl (struct inode*,int) ;
 int is_uncached_acl (void*) ;
 int posix_acl_dup (void*) ;
 int posix_acl_release (void*) ;
 int set_cached_acl (struct inode*,int,int *) ;
 void* stub1 (struct inode*,int) ;
 void* uncached_acl_sentinel (int ) ;
 scalar_t__ unlikely (int) ;

struct posix_acl *get_acl(struct inode *inode, int type)
{
 void *sentinel;
 struct posix_acl **p;
 struct posix_acl *acl;







 acl = get_cached_acl(inode, type);
 if (!is_uncached_acl(acl))
  return acl;

 if (!IS_POSIXACL(inode))
  return ((void*)0);

 sentinel = uncached_acl_sentinel(current);
 p = acl_by_type(inode, type);
 if (cmpxchg(p, ACL_NOT_CACHED, sentinel) != ACL_NOT_CACHED)
                     ;
 if (!inode->i_op->get_acl) {
  set_cached_acl(inode, type, ((void*)0));
  return ((void*)0);
 }
 acl = inode->i_op->get_acl(inode, type);

 if (IS_ERR(acl)) {




  cmpxchg(p, sentinel, ACL_NOT_CACHED);
  return acl;
 }




 posix_acl_dup(acl);
 if (unlikely(cmpxchg(p, sentinel, acl) != sentinel))
  posix_acl_release(acl);
 return acl;
}
