
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_msg {int dummy; } ;


 scalar_t__ SHORT_H_SIZE ;
 scalar_t__ msg_hdr_sz (struct tipc_msg*) ;

__attribute__((used)) static inline int msg_short(struct tipc_msg *m)
{
 return msg_hdr_sz(m) == SHORT_H_SIZE;
}
