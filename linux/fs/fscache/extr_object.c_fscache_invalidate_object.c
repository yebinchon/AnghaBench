
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_state {int dummy; } ;
struct fscache_object {int dummy; } ;


 struct fscache_state* _fscache_invalidate_object (struct fscache_object*,int) ;
 int fscache_n_cop_invalidate_object ;
 int fscache_n_invalidates_run ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;

__attribute__((used)) static const struct fscache_state *fscache_invalidate_object(struct fscache_object *object,
            int event)
{
 const struct fscache_state *s;

 fscache_stat(&fscache_n_invalidates_run);
 fscache_stat(&fscache_n_cop_invalidate_object);
 s = _fscache_invalidate_object(object, event);
 fscache_stat_d(&fscache_n_cop_invalidate_object);
 return s;
}
