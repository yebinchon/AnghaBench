
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 scalar_t__ LINK_PROTOCOL ;
 scalar_t__ STATE_MSG ;
 scalar_t__ likely (int) ;
 scalar_t__ msg_type (struct tipc_msg*) ;
 scalar_t__ msg_user (struct tipc_msg*) ;

__attribute__((used)) static inline bool msg_peer_link_is_up(struct tipc_msg *m)
{
 if (likely(msg_user(m) != LINK_PROTOCOL))
  return 1;
 if (msg_type(m) == STATE_MSG)
  return 1;
 return 0;
}
