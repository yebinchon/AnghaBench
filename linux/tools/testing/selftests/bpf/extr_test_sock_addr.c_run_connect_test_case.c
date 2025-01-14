
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sock_addr_test {scalar_t__ type; } ;
typedef int socklen_t ;


 scalar_t__ SOCK_STREAM ;
 int close (int) ;
 scalar_t__ cmp_local_ip (int,struct sockaddr_storage*) ;
 scalar_t__ cmp_peer_addr (int,struct sockaddr_storage*) ;
 int connect_to_server (scalar_t__,struct sockaddr_storage*,int) ;
 int fastconnect_to_server (struct sockaddr_storage*,int) ;
 scalar_t__ init_addrs (struct sock_addr_test const*,struct sockaddr_storage*,struct sockaddr_storage*,struct sockaddr_storage*) ;
 int start_server (scalar_t__,struct sockaddr_storage*,int) ;

__attribute__((used)) static int run_connect_test_case(const struct sock_addr_test *test)
{
 socklen_t addr_len = sizeof(struct sockaddr_storage);
 struct sockaddr_storage expected_src_addr;
 struct sockaddr_storage requested_addr;
 struct sockaddr_storage expected_addr;
 int clientfd = -1;
 int servfd = -1;
 int err = 0;

 if (init_addrs(test, &requested_addr, &expected_addr,
         &expected_src_addr))
  goto err;


 servfd = start_server(test->type, &expected_addr, addr_len);
 if (servfd == -1)
  goto err;

 clientfd = connect_to_server(test->type, &requested_addr, addr_len);
 if (clientfd == -1)
  goto err;


 if (cmp_peer_addr(clientfd, &expected_addr))
  goto err;

 if (cmp_local_ip(clientfd, &expected_src_addr))
  goto err;

 if (test->type == SOCK_STREAM) {

  clientfd = fastconnect_to_server(&requested_addr, addr_len);
  if (clientfd == -1)
   goto err;


  if (cmp_peer_addr(clientfd, &expected_addr))
   goto err;

  if (cmp_local_ip(clientfd, &expected_src_addr))
   goto err;
 }

 goto out;
err:
 err = -1;
out:
 close(clientfd);
 close(servfd);
 return err;
}
