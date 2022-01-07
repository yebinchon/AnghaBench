
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct data {int dummy; } ;
typedef int addr ;


 struct data data_append_integer (struct data,int ,int) ;

struct data data_append_addr(struct data d, uint64_t addr)
{
 return data_append_integer(d, addr, sizeof(addr) * 8);
}
