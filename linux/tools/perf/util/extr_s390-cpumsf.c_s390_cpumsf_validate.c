
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_trailer_entry {int dsdes; int bsdes; } ;
struct hws_basic_entry {int def; } ;


 int S390_CPUMSF_PAGESZ ;
 int be16toh (int ) ;

__attribute__((used)) static bool s390_cpumsf_validate(int machine_type,
     unsigned char *buf, size_t len,
     unsigned short *bsdes,
     unsigned short *dsdes)
{
 struct hws_basic_entry *basic = (struct hws_basic_entry *)buf;
 struct hws_trailer_entry *te;

 *dsdes = *bsdes = 0;
 if (len & (S390_CPUMSF_PAGESZ - 1))
  return 0;
 if (be16toh(basic->def) != 1)
  return 0;

 te = (struct hws_trailer_entry *)(buf + S390_CPUMSF_PAGESZ
           - sizeof(*te));
 *bsdes = be16toh(te->bsdes);
 *dsdes = be16toh(te->dsdes);
 if (!te->bsdes && !te->dsdes) {

  switch (machine_type) {
  case 2097:
  case 2098:
   *dsdes = 64;
   *bsdes = 32;
   break;
  case 2817:
  case 2818:
   *dsdes = 74;
   *bsdes = 32;
   break;
  case 2827:
  case 2828:
   *dsdes = 85;
   *bsdes = 32;
   break;
  case 2964:
  case 2965:
   *dsdes = 112;
   *bsdes = 32;
   break;
  default:

   return 0;
  }
 }
 return 1;
}
