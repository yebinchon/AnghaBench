
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int integrity_failed; int replay; int replay_window; } ;
struct xfrm_usersa_info {int seq; int flags; int family; int reqid; int replay_window; int mode; int saddr; TYPE_2__ stats; int curlft; int lft; int sel; int id; } ;
struct TYPE_8__ {int seq; } ;
struct TYPE_7__ {int flags; int family; int reqid; int replay_window; int mode; int saddr; } ;
struct TYPE_5__ {int integrity_failed; int replay; int replay_window; } ;
struct xfrm_state {TYPE_4__ km; TYPE_3__ props; TYPE_1__ stats; int curlft; int lft; int sel; int id; } ;


 int memcpy (int *,int *,int) ;
 int memset (struct xfrm_usersa_info*,int ,int) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static void copy_to_user_state(struct xfrm_state *x, struct xfrm_usersa_info *p)
{
 memset(p, 0, sizeof(*p));
 memcpy(&p->id, &x->id, sizeof(p->id));
 memcpy(&p->sel, &x->sel, sizeof(p->sel));
 memcpy(&p->lft, &x->lft, sizeof(p->lft));
 memcpy(&p->curlft, &x->curlft, sizeof(p->curlft));
 put_unaligned(x->stats.replay_window, &p->stats.replay_window);
 put_unaligned(x->stats.replay, &p->stats.replay);
 put_unaligned(x->stats.integrity_failed, &p->stats.integrity_failed);
 memcpy(&p->saddr, &x->props.saddr, sizeof(p->saddr));
 p->mode = x->props.mode;
 p->replay_window = x->props.replay_window;
 p->reqid = x->props.reqid;
 p->family = x->props.family;
 p->flags = x->props.flags;
 p->seq = x->km.seq;
}
