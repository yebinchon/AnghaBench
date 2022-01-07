
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {scalar_t__ replay_esn; } ;
struct xfrm_replay_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct xfrm_lifetime_cur {int dummy; } ;
struct xfrm_aevent_id {int dummy; } ;


 unsigned int NLMSG_ALIGN (int) ;
 unsigned int nla_total_size (int) ;
 unsigned int nla_total_size_64bit (int) ;
 int xfrm_replay_state_esn_len (scalar_t__) ;

__attribute__((used)) static inline unsigned int xfrm_aevent_msgsize(struct xfrm_state *x)
{
 unsigned int replay_size = x->replay_esn ?
         xfrm_replay_state_esn_len(x->replay_esn) :
         sizeof(struct xfrm_replay_state);

 return NLMSG_ALIGN(sizeof(struct xfrm_aevent_id))
        + nla_total_size(replay_size)
        + nla_total_size_64bit(sizeof(struct xfrm_lifetime_cur))
        + nla_total_size(sizeof(struct xfrm_mark))
        + nla_total_size(4)
        + nla_total_size(4);
}
