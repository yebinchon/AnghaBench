
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct reserve_info {int dummy; } ;
struct inbuf {int dummy; } ;
struct fdt_reserve_entry {int size; int address; } ;
typedef int re ;


 struct reserve_info* add_reserve_entry (struct reserve_info*,struct reserve_info*) ;
 struct reserve_info* build_reserve_entry (scalar_t__,scalar_t__) ;
 scalar_t__ fdt64_to_cpu (int ) ;
 int flat_read_chunk (struct inbuf*,struct fdt_reserve_entry*,int) ;

__attribute__((used)) static struct reserve_info *flat_read_mem_reserve(struct inbuf *inb)
{
 struct reserve_info *reservelist = ((void*)0);
 struct reserve_info *new;
 struct fdt_reserve_entry re;







 while (1) {
  uint64_t address, size;

  flat_read_chunk(inb, &re, sizeof(re));
  address = fdt64_to_cpu(re.address);
  size = fdt64_to_cpu(re.size);
  if (size == 0)
   break;

  new = build_reserve_entry(address, size);
  reservelist = add_reserve_entry(reservelist, new);
 }

 return reservelist;
}
