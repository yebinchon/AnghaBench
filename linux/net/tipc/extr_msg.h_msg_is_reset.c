
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 scalar_t__ LINK_PROTOCOL ;
 scalar_t__ RESET_MSG ;
 scalar_t__ msg_type (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;

__attribute__((used)) static inline bool msg_is_reset(struct tipc_msg *hdr)
{
 return (msg_user(hdr) == LINK_PROTOCOL) && (msg_type(hdr) == RESET_MSG);
}
