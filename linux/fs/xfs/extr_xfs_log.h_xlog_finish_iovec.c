
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xfs_log_vec {int lv_bytes; int lv_buf_len; } ;
struct xfs_log_iovec {int i_len; } ;


 scalar_t__ round_up (int,int) ;

__attribute__((used)) static inline void
xlog_finish_iovec(struct xfs_log_vec *lv, struct xfs_log_iovec *vec, int len)
{
 lv->lv_buf_len += round_up(len, sizeof(uint64_t));
 lv->lv_bytes += len;
 vec->i_len = len;
}
