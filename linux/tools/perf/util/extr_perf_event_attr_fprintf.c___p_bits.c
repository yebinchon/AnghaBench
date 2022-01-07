
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bit_names {int bit; int * name; } ;


 int scnprintf (char*,size_t,char*,char*,int *) ;

__attribute__((used)) static void __p_bits(char *buf, size_t size, u64 value, struct bit_names *bits)
{
 bool first_bit = 1;
 int i = 0;

 do {
  if (value & bits[i].bit) {
   buf += scnprintf(buf, size, "%s%s", first_bit ? "" : "|", bits[i].name);
   first_bit = 0;
  }
 } while (bits[++i].name != ((void*)0));
}
