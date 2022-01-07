
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;


 int msg_set_word (struct tipc_msg*,int,int ) ;

__attribute__((used)) static inline void msg_set_namelower(struct tipc_msg *m, u32 n)
{
 msg_set_word(m, 9, n);
}
