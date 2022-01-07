
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct audit_buffer {int dummy; } ;


 int audit_log_common_recv_msg (int *,struct audit_buffer**,int ) ;

__attribute__((used)) static inline void audit_log_user_recv_msg(struct audit_buffer **ab,
        u16 msg_type)
{
 audit_log_common_recv_msg(((void*)0), ab, msg_type);
}
