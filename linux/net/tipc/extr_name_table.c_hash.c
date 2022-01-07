
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIPC_NAMETBL_SIZE ;

__attribute__((used)) static int hash(int x)
{
 return x & (TIPC_NAMETBL_SIZE - 1);
}
