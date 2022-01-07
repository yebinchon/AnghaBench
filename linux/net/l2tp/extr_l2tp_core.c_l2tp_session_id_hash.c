
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2tp_tunnel {struct hlist_head* session_hlist; } ;
struct hlist_head {int dummy; } ;


 int L2TP_HASH_BITS ;
 size_t hash_32 (int ,int ) ;

__attribute__((used)) static inline struct hlist_head *
l2tp_session_id_hash(struct l2tp_tunnel *tunnel, u32 session_id)
{
 return &tunnel->session_hlist[hash_32(session_id, L2TP_HASH_BITS)];
}
