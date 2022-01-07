
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct audit_buffer {int dummy; } ;


 int MAY_READ ;
 int MAY_WRITE ;
 int audit_log_string (struct audit_buffer*,char*) ;

__attribute__((used)) static void audit_signal_mask(struct audit_buffer *ab, u32 mask)
{
 if (mask & MAY_READ)
  audit_log_string(ab, "receive");
 if (mask & MAY_WRITE)
  audit_log_string(ab, "send");
}
