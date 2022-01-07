
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int in_temp_ack; } ;


 int read_partial (struct ceph_connection*,int,int,int *) ;

__attribute__((used)) static int read_partial_ack(struct ceph_connection *con)
{
 int size = sizeof (con->in_temp_ack);
 int end = size;

 return read_partial(con, end, size, &con->in_temp_ack);
}
