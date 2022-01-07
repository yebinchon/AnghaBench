
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ceph_messenger {scalar_t__ global_seq; int global_seq_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u32 get_global_seq(struct ceph_messenger *msgr, u32 gt)
{
 u32 ret;

 spin_lock(&msgr->global_seq_lock);
 if (msgr->global_seq < gt)
  msgr->global_seq = gt;
 ret = ++msgr->global_seq;
 spin_unlock(&msgr->global_seq_lock);
 return ret;
}
