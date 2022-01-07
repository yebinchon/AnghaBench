
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union kvm_mmu_page_role {int word; size_t access; scalar_t__ smm; scalar_t__ smap_and_not_wp; scalar_t__ smep_and_not_wp; scalar_t__ cr0_wp; scalar_t__ nxe; scalar_t__ cr4_pae; scalar_t__ invalid; scalar_t__ direct; int quadrant; int level; } ;
struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_event {int tep; } ;


 scalar_t__ tep_get_field_val (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ;
 scalar_t__ tep_is_file_bigendian (int ) ;
 scalar_t__ tep_is_local_bigendian (int ) ;
 int tep_print_num_field (struct trace_seq*,char*,struct tep_event*,char*,struct tep_record*,int) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static int kvm_mmu_print_role(struct trace_seq *s, struct tep_record *record,
         struct tep_event *event, void *context)
{
 unsigned long long val;
 static const char *access_str[] = {
  "---", "--x", "w--", "w-x", "-u-", "-ux", "wu-", "wux"
 };
 union kvm_mmu_page_role role;

 if (tep_get_field_val(s, event, "role", record, &val, 1) < 0)
  return -1;

 role.word = (int)val;





 if (tep_is_file_bigendian(event->tep) ==
     tep_is_local_bigendian(event->tep)) {

  trace_seq_printf(s, "%u q%u%s %s%s %spae %snxe %swp%s%s%s",
     role.level,
     role.quadrant,
     role.direct ? " direct" : "",
     access_str[role.access],
     role.invalid ? " invalid" : "",
     role.cr4_pae ? "" : "!",
     role.nxe ? "" : "!",
     role.cr0_wp ? "" : "!",
     role.smep_and_not_wp ? " smep" : "",
     role.smap_and_not_wp ? " smap" : "",
     role.smm ? " smm" : "");
 } else
  trace_seq_printf(s, "WORD: %08x", role.word);

 tep_print_num_field(s, " root %u ", event,
       "root_count", record, 1);

 if (tep_get_field_val(s, event, "unsync", record, &val, 1) < 0)
  return -1;

 trace_seq_printf(s, "%s%c", val ? "unsync" : "sync", 0);
 return 0;
}
