
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2tp_net {struct hlist_head* l2tp_session_hlist; } ;
struct hlist_head {int dummy; } ;


 int L2TP_HASH_BITS_2 ;
 size_t hash_32 (int ,int ) ;

__attribute__((used)) static inline struct hlist_head *
l2tp_session_id_hash_2(struct l2tp_net *pn, u32 session_id)
{
 return &pn->l2tp_session_hlist[hash_32(session_id, L2TP_HASH_BITS_2)];

}
