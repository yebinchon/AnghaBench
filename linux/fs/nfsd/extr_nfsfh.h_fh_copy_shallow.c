
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knfsd_fh {int fh_size; int fh_base; } ;


 int memcpy (int *,int *,int ) ;

__attribute__((used)) static inline void
fh_copy_shallow(struct knfsd_fh *dst, struct knfsd_fh *src)
{
 dst->fh_size = src->fh_size;
 memcpy(&dst->fh_base, &src->fh_base, src->fh_size);
}
