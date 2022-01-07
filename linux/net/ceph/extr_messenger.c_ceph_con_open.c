
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_entity_addr {int dummy; } ;
struct TYPE_2__ {int num; scalar_t__ type; } ;
struct ceph_connection {scalar_t__ state; int mutex; scalar_t__ delay; int peer_addr; TYPE_1__ peer_name; } ;
typedef scalar_t__ __u8 ;
typedef int __u64 ;


 scalar_t__ CON_STATE_CLOSED ;
 scalar_t__ CON_STATE_PREOPEN ;
 int WARN_ON (int) ;
 int ceph_pr_addr (struct ceph_entity_addr*) ;
 int cpu_to_le64 (int ) ;
 int dout (char*,struct ceph_connection*,int ) ;
 int memcpy (int *,struct ceph_entity_addr*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_con (struct ceph_connection*) ;

void ceph_con_open(struct ceph_connection *con,
     __u8 entity_type, __u64 entity_num,
     struct ceph_entity_addr *addr)
{
 mutex_lock(&con->mutex);
 dout("con_open %p %s\n", con, ceph_pr_addr(addr));

 WARN_ON(con->state != CON_STATE_CLOSED);
 con->state = CON_STATE_PREOPEN;

 con->peer_name.type = (__u8) entity_type;
 con->peer_name.num = cpu_to_le64(entity_num);

 memcpy(&con->peer_addr, addr, sizeof(*addr));
 con->delay = 0;
 mutex_unlock(&con->mutex);
 queue_con(con);
}
