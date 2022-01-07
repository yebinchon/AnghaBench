
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf {int refcnt; } ;


 int ENOENT ;
 struct btf* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct btf*) ;
 int PTR_ERR (struct btf*) ;
 int __btf_new_fd (struct btf*) ;
 int btf_idr ;
 int btf_put (struct btf*) ;
 struct btf* idr_find (int *,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;

int btf_get_fd_by_id(u32 id)
{
 struct btf *btf;
 int fd;

 rcu_read_lock();
 btf = idr_find(&btf_idr, id);
 if (!btf || !refcount_inc_not_zero(&btf->refcnt))
  btf = ERR_PTR(-ENOENT);
 rcu_read_unlock();

 if (IS_ERR(btf))
  return PTR_ERR(btf);

 fd = __btf_new_fd(btf);
 if (fd < 0)
  btf_put(btf);

 return fd;
}
