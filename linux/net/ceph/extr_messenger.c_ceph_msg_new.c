
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_msg {int dummy; } ;
typedef int gfp_t ;


 struct ceph_msg* ceph_msg_new2 (int,int,int ,int ,int) ;

struct ceph_msg *ceph_msg_new(int type, int front_len, gfp_t flags,
         bool can_fail)
{
 return ceph_msg_new2(type, front_len, 0, flags, can_fail);
}
