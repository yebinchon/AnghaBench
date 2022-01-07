
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {scalar_t__ in_base_pos; } ;


 int dout (char*,struct ceph_connection*) ;

__attribute__((used)) static void prepare_read_ack(struct ceph_connection *con)
{
 dout("prepare_read_ack %p\n", con);
 con->in_base_pos = 0;
}
