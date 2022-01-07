
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_timespec {int dummy; } ;
struct ceph_connection {int last_keepalive_ack; } ;
typedef int ceph_ts ;


 int ceph_decode_timespec64 (int *,struct ceph_timespec*) ;
 int prepare_read_tag (struct ceph_connection*) ;
 int read_partial (struct ceph_connection*,size_t,size_t,struct ceph_timespec*) ;

__attribute__((used)) static int read_keepalive_ack(struct ceph_connection *con)
{
 struct ceph_timespec ceph_ts;
 size_t size = sizeof(ceph_ts);
 int ret = read_partial(con, size, size, &ceph_ts);
 if (ret <= 0)
  return ret;
 ceph_decode_timespec64(&con->last_keepalive_ack, &ceph_ts);
 prepare_read_tag(con);
 return 1;
}
