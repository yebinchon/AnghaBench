
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock_addr_test {scalar_t__ expected_src_ip; int domain; int requested_port; scalar_t__ requested_ip; int expected_port; scalar_t__ expected_ip; } ;
typedef int socklen_t ;


 int mk_sockaddr (int ,scalar_t__,int ,struct sockaddr*,int) ;

__attribute__((used)) static int init_addrs(const struct sock_addr_test *test,
        struct sockaddr_storage *requested_addr,
        struct sockaddr_storage *expected_addr,
        struct sockaddr_storage *expected_src_addr)
{
 socklen_t addr_len = sizeof(struct sockaddr_storage);

 if (mk_sockaddr(test->domain, test->expected_ip, test->expected_port,
   (struct sockaddr *)expected_addr, addr_len) == -1)
  goto err;

 if (mk_sockaddr(test->domain, test->requested_ip, test->requested_port,
   (struct sockaddr *)requested_addr, addr_len) == -1)
  goto err;

 if (test->expected_src_ip &&
     mk_sockaddr(test->domain, test->expected_src_ip, 0,
   (struct sockaddr *)expected_src_addr, addr_len) == -1)
  goto err;

 return 0;
err:
 return -1;
}
