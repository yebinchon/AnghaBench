#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct tcf_result {scalar_t__ classid; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int mask; int offset; int key; } ;
struct rsvp_session {scalar_t__* dst; scalar_t__ protocol; scalar_t__ tunnelid; int /*<<< orphan*/ * ht; TYPE_1__ dpi; int /*<<< orphan*/  next; } ;
struct rsvp_head {int /*<<< orphan*/ * ht; } ;
struct TYPE_4__ {int mask; int offset; int key; } ;
struct rsvp_filter {scalar_t__* src; scalar_t__ tunnelhdr; struct tcf_result res; int /*<<< orphan*/  next; TYPE_2__ spi; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ nexthdr; scalar_t__ protocol; int ihl; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int RSVP_DST_LEN ; 
 unsigned int FUNC1 (scalar_t__*,scalar_t__,scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct iphdr*) ; 
 struct ipv6hdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, const struct tcf_proto *tp,
			 struct tcf_result *res)
{
	struct rsvp_head *head = FUNC7(tp->root);
	struct rsvp_session *s;
	struct rsvp_filter *f;
	unsigned int h1, h2;
	__be32 *dst, *src;
	u8 protocol;
	u8 tunnelid = 0;
	u8 *xprt;
#if RSVP_DST_LEN == 4
	struct ipv6hdr *nhptr;

	if (!pskb_network_may_pull(skb, sizeof(*nhptr)))
		return -1;
	nhptr = ipv6_hdr(skb);
#else
	struct iphdr *nhptr;

	if (!FUNC6(skb, sizeof(*nhptr)))
		return -1;
	nhptr = FUNC3(skb);
#endif
restart:

#if RSVP_DST_LEN == 4
	src = &nhptr->saddr.s6_addr32[0];
	dst = &nhptr->daddr.s6_addr32[0];
	protocol = nhptr->nexthdr;
	xprt = ((u8 *)nhptr) + sizeof(struct ipv6hdr);
#else
	src = &nhptr->saddr;
	dst = &nhptr->daddr;
	protocol = nhptr->protocol;
	xprt = ((u8 *)nhptr) + (nhptr->ihl<<2);
	if (FUNC4(nhptr))
		return -1;
#endif

	h1 = FUNC1(dst, protocol, tunnelid);
	h2 = FUNC2(src);

	for (s = FUNC7(head->ht[h1]); s;
	     s = FUNC7(s->next)) {
		if (dst[RSVP_DST_LEN-1] == s->dst[RSVP_DST_LEN - 1] &&
		    protocol == s->protocol &&
		    !(s->dpi.mask &
		      (*(u32 *)(xprt + s->dpi.offset) ^ s->dpi.key)) &&
#if RSVP_DST_LEN == 4
		    dst[0] == s->dst[0] &&
		    dst[1] == s->dst[1] &&
		    dst[2] == s->dst[2] &&
#endif
		    tunnelid == s->tunnelid) {

			for (f = FUNC7(s->ht[h2]); f;
			     f = FUNC7(f->next)) {
				if (src[RSVP_DST_LEN-1] == f->src[RSVP_DST_LEN - 1] &&
				    !(f->spi.mask & (*(u32 *)(xprt + f->spi.offset) ^ f->spi.key))
#if RSVP_DST_LEN == 4
				    &&
				    src[0] == f->src[0] &&
				    src[1] == f->src[1] &&
				    src[2] == f->src[2]
#endif
				    ) {
					*res = f->res;
					FUNC0();

matched:
					if (f->tunnelhdr == 0)
						return 0;

					tunnelid = f->res.classid;
					nhptr = (void *)(xprt + f->tunnelhdr - sizeof(*nhptr));
					goto restart;
				}
			}

			/* And wildcard bucket... */
			for (f = FUNC7(s->ht[16]); f;
			     f = FUNC7(f->next)) {
				*res = f->res;
				FUNC0();
				goto matched;
			}
			return -1;
		}
	}
	return -1;
}