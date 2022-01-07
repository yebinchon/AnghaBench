
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {int peer_addr_for_me; int actual_peer_addr; int * in_banner; int in_base_pos; } ;


 int CEPH_BANNER ;
 int ceph_decode_banner_addr (int *) ;
 int dout (char*,struct ceph_connection*,int ) ;
 int read_partial (struct ceph_connection*,int,int,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int read_partial_banner(struct ceph_connection *con)
{
 int size;
 int end;
 int ret;

 dout("read_partial_banner %p at %d\n", con, con->in_base_pos);


 size = strlen(CEPH_BANNER);
 end = size;
 ret = read_partial(con, end, size, con->in_banner);
 if (ret <= 0)
  goto out;

 size = sizeof (con->actual_peer_addr);
 end += size;
 ret = read_partial(con, end, size, &con->actual_peer_addr);
 if (ret <= 0)
  goto out;
 ceph_decode_banner_addr(&con->actual_peer_addr);

 size = sizeof (con->peer_addr_for_me);
 end += size;
 ret = read_partial(con, end, size, &con->peer_addr_for_me);
 if (ret <= 0)
  goto out;
 ceph_decode_banner_addr(&con->peer_addr_for_me);

out:
 return ret;
}
