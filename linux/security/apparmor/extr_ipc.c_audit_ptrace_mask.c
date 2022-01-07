
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_buffer {int dummy; } ;






 int audit_log_string (struct audit_buffer*,char*) ;

__attribute__((used)) static void audit_ptrace_mask(struct audit_buffer *ab, u32 mask)
{
 switch (mask) {
 case 129:
  audit_log_string(ab, "read");
  break;
 case 128:
  audit_log_string(ab, "trace");
  break;
 case 131:
  audit_log_string(ab, "readby");
  break;
 case 130:
  audit_log_string(ab, "tracedby");
  break;
 }
}
