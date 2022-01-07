
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct nfnl_callback {int dummy; } ;
struct nfnetlink_subsystem {size_t cb_count; struct nfnl_callback const* cb; } ;


 size_t NFNL_MSG_TYPE (int ) ;

__attribute__((used)) static inline const struct nfnl_callback *
nfnetlink_find_client(u16 type, const struct nfnetlink_subsystem *ss)
{
 u8 cb_id = NFNL_MSG_TYPE(type);

 if (cb_id >= ss->cb_count)
  return ((void*)0);

 return &ss->cb[cb_id];
}
