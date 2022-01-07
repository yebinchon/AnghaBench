
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int dummy; } ;


 int queue_con_delay (struct ceph_connection*,int ) ;

__attribute__((used)) static void queue_con(struct ceph_connection *con)
{
 (void) queue_con_delay(con, 0);
}
