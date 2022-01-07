
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ihex_binrec {unsigned char addr; struct ihex_binrec* next; int len; } ;


 scalar_t__ ALIGN (int ,int) ;
 unsigned char htonl (unsigned char) ;
 int htons (int ) ;
 int ihex_binrec_size (struct ihex_binrec*) ;
 struct ihex_binrec* records ;
 int write (int,unsigned char*,int) ;

__attribute__((used)) static int output_records(int outfd)
{
 unsigned char zeroes[6] = {0, 0, 0, 0, 0, 0};
 struct ihex_binrec *p = records;

 while (p) {
  uint16_t writelen = ALIGN(ihex_binrec_size(p), 4);

  p->addr = htonl(p->addr);
  p->len = htons(p->len);
  if (write(outfd, &p->addr, writelen) != writelen)
   return 1;
  p = p->next;
 }


 if (write(outfd, zeroes, 6) != 6)
  return 1;
 return 0;
}
