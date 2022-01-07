
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sock_addr_test {int type; } ;
typedef int socklen_t ;


 int close (int) ;
 scalar_t__ cmp_local_addr (int,struct sockaddr_storage*) ;
 int connect_to_server (int ,struct sockaddr_storage*,int) ;
 scalar_t__ init_addrs (struct sock_addr_test const*,struct sockaddr_storage*,struct sockaddr_storage*,int *) ;
 int start_server (int ,struct sockaddr_storage*,int) ;

__attribute__((used)) static int run_bind_test_case(const struct sock_addr_test *test)
{
 socklen_t addr_len = sizeof(struct sockaddr_storage);
 struct sockaddr_storage requested_addr;
 struct sockaddr_storage expected_addr;
 int clientfd = -1;
 int servfd = -1;
 int err = 0;

 if (init_addrs(test, &requested_addr, &expected_addr, ((void*)0)))
  goto err;

 servfd = start_server(test->type, &requested_addr, addr_len);
 if (servfd == -1)
  goto err;

 if (cmp_local_addr(servfd, &expected_addr))
  goto err;


 clientfd = connect_to_server(test->type, &expected_addr, addr_len);
 if (clientfd == -1)
  goto err;

 goto out;
err:
 err = -1;
out:
 close(clientfd);
 close(servfd);
 return err;
}
