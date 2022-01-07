
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int te ;
struct s390_cpumsf {int machine_type; } ;
struct hws_trailer_entry {unsigned short bsdes; unsigned short dsdes; } ;
struct hws_diag_entry {int dummy; } ;
struct hws_basic_entry {int dummy; } ;


 char* PERF_COLOR_BLUE ;
 size_t S390_CPUMSF_PAGESZ ;
 int color_fprintf (int ,char const*,char*,size_t) ;
 int memcpy (struct hws_trailer_entry*,unsigned char*,int) ;
 int pr_err (char*,size_t,int ,unsigned short,unsigned short) ;
 scalar_t__ s390_cpumsf_basic_show (char const*,size_t,struct hws_basic_entry*) ;
 scalar_t__ s390_cpumsf_diag_show (char const*,size_t,struct hws_diag_entry*) ;
 int s390_cpumsf_reached_trailer (unsigned short,size_t) ;
 scalar_t__ s390_cpumsf_trailer_show (char const*,size_t,struct hws_trailer_entry*) ;
 int s390_cpumsf_validate (int ,unsigned char*,size_t,unsigned short*,unsigned short*) ;
 int stdout ;

__attribute__((used)) static void s390_cpumsf_dump(struct s390_cpumsf *sf,
        unsigned char *buf, size_t len)
{
 const char *color = PERF_COLOR_BLUE;
 struct hws_basic_entry *basic;
 struct hws_diag_entry *diag;
 unsigned short bsdes, dsdes;
 size_t pos = 0;

 color_fprintf(stdout, color,
        ". ... s390 AUX data: size %zu bytes\n",
        len);

 if (!s390_cpumsf_validate(sf->machine_type, buf, len, &bsdes,
      &dsdes)) {
  pr_err("Invalid AUX trace data block size:%zu"
         " (type:%d bsdes:%hd dsdes:%hd)\n",
         len, sf->machine_type, bsdes, dsdes);
  return;
 }




 while (pos < len) {

  basic = (struct hws_basic_entry *)(buf + pos);
  if (s390_cpumsf_basic_show(color, pos, basic))
   pos += bsdes;
  else
   return;


  diag = (struct hws_diag_entry *)(buf + pos);
  if (s390_cpumsf_diag_show(color, pos, diag))
   pos += dsdes;
  else
   return;


  if (!s390_cpumsf_reached_trailer(bsdes + dsdes, pos)) {

   struct hws_trailer_entry te;

   pos = (pos + S390_CPUMSF_PAGESZ)
          & ~(S390_CPUMSF_PAGESZ - 1);
   pos -= sizeof(te);
   memcpy(&te, buf + pos, sizeof(te));



   te.bsdes = bsdes;
   te.dsdes = dsdes;
   if (s390_cpumsf_trailer_show(color, pos, &te))
    pos += sizeof(te);
   else
    return;
  }
 }
}
