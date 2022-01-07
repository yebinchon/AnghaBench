
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_trailer_entry {int dummy; } ;


 int S390_CPUMSF_PAGESZ ;

__attribute__((used)) static bool s390_cpumsf_reached_trailer(size_t entry_sz, size_t pos)
{
 size_t payload = S390_CPUMSF_PAGESZ - sizeof(struct hws_trailer_entry);

 if (payload - (pos & (S390_CPUMSF_PAGESZ - 1)) < entry_sz)
  return 0;
 return 1;
}
