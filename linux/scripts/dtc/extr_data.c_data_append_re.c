
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fdt_reserve_entry {void* size; void* address; } ;
struct data {int dummy; } ;
typedef int re ;


 void* cpu_to_fdt64 (int ) ;
 struct data data_append_data (struct data,struct fdt_reserve_entry*,int) ;

struct data data_append_re(struct data d, uint64_t address, uint64_t size)
{
 struct fdt_reserve_entry re;

 re.address = cpu_to_fdt64(address);
 re.size = cpu_to_fdt64(size);

 return data_append_data(d, &re, sizeof(re));
}
