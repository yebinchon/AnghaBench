
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct xfs_log_vec {int dummy; } ;
struct xfs_log_iovec {int dummy; } ;


 int memcpy (void*,void*,int) ;
 int xlog_finish_iovec (struct xfs_log_vec*,struct xfs_log_iovec*,int) ;
 void* xlog_prepare_iovec (struct xfs_log_vec*,struct xfs_log_iovec**,int ) ;

__attribute__((used)) static inline void *
xlog_copy_iovec(struct xfs_log_vec *lv, struct xfs_log_iovec **vecp,
  uint type, void *data, int len)
{
 void *buf;

 buf = xlog_prepare_iovec(lv, vecp, type);
 memcpy(buf, data, len);
 xlog_finish_iovec(lv, *vecp, len);
 return buf;
}
