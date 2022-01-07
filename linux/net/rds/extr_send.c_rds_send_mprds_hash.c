
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int dummy; } ;
struct rds_connection {int c_npaths; int c_hs_waitq; } ;


 int RDS_MPATH_HASH (struct rds_sock*,int) ;
 int RDS_MPATH_WORKERS ;
 int rds_send_ping (struct rds_connection*,int ) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int rds_send_mprds_hash(struct rds_sock *rs,
          struct rds_connection *conn, int nonblock)
{
 int hash;

 if (conn->c_npaths == 0)
  hash = RDS_MPATH_HASH(rs, RDS_MPATH_WORKERS);
 else
  hash = RDS_MPATH_HASH(rs, conn->c_npaths);
 if (conn->c_npaths == 0 && hash != 0) {
  rds_send_ping(conn, 0);






  if (conn->c_npaths == 0) {



   if (nonblock)
    return 0;
   if (wait_event_interruptible(conn->c_hs_waitq,
           conn->c_npaths != 0))
    hash = 0;
  }
  if (conn->c_npaths == 1)
   hash = 0;
 }
 return hash;
}
