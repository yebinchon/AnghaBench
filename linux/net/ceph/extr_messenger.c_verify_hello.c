
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_connection {char* error_msg; int peer_addr; int in_banner; } ;


 int CEPH_BANNER ;
 int ceph_pr_addr (int *) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int pr_err (char*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int verify_hello(struct ceph_connection *con)
{
 if (memcmp(con->in_banner, CEPH_BANNER, strlen(CEPH_BANNER))) {
  pr_err("connect to %s got bad banner\n",
         ceph_pr_addr(&con->peer_addr));
  con->error_msg = "protocol error, bad banner";
  return -1;
 }
 return 0;
}
