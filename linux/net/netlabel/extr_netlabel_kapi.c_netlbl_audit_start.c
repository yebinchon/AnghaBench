
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_audit {int dummy; } ;
struct audit_buffer {int dummy; } ;


 struct audit_buffer* netlbl_audit_start_common (int,struct netlbl_audit*) ;

struct audit_buffer *netlbl_audit_start(int type,
     struct netlbl_audit *audit_info)
{
 return netlbl_audit_start_common(type, audit_info);
}
