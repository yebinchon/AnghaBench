
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_addr_test {int dummy; } ;


 int CONNECT6_PROG_PATH ;
 int load_path (struct sock_addr_test const*,int ) ;

__attribute__((used)) static int connect6_prog_load(const struct sock_addr_test *test)
{
 return load_path(test, CONNECT6_PROG_PATH);
}
