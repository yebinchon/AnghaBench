
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_conn {int flags; } ;


 int CF_CONNECTED ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool connected(struct tipc_conn *con)
{
 return con && test_bit(CF_CONNECTED, &con->flags);
}
