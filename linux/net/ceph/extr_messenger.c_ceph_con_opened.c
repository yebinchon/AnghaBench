
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {scalar_t__ connect_seq; } ;



bool ceph_con_opened(struct ceph_connection *con)
{
 return con->connect_seq > 0;
}
