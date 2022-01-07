
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_record {int time; struct pstore_info* psi; } ;
struct pstore_info {int dummy; } ;


 int ktime_get_real_fast_ns () ;
 int memset (struct pstore_record*,int ,int) ;
 int ns_to_timespec64 (int ) ;

void pstore_record_init(struct pstore_record *record,
   struct pstore_info *psinfo)
{
 memset(record, 0, sizeof(*record));

 record->psi = psinfo;


 record->time = ns_to_timespec64(ktime_get_real_fast_ns());
}
