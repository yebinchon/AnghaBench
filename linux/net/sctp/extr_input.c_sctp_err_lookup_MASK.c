#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int /*<<< orphan*/  vtag; } ;
struct sctp_transport {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  init_tag; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct sctp_init_chunk {TYPE_3__ init_hdr; TYPE_2__ chunk_hdr; } ;
struct sctp_chunkhdr {int dummy; } ;
struct TYPE_8__ {scalar_t__ my_vtag; scalar_t__ peer_vtag; } ;
struct TYPE_5__ {struct sock* sk; } ;
struct sctp_association {TYPE_4__ c; TYPE_1__ base; } ;
struct sctp_af {int /*<<< orphan*/  (* from_skb ) (union sctp_addr*,struct sk_buff*,int) ;} ;
struct net {int dummy; } ;
typedef  scalar_t__ __u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_LOCKDROPPEDICMPS ; 
 scalar_t__ SCTP_CID_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct sctp_association* FUNC1 (struct net*,union sctp_addr*,union sctp_addr*,struct sctp_transport**) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sctp_af* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_transport*) ; 
 struct sctp_init_chunk* FUNC6 (struct sk_buff*,scalar_t__,int,struct sctp_init_chunk*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (union sctp_addr*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (union sctp_addr*,struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (int) ; 

struct sock *FUNC12(struct net *net, int family, struct sk_buff *skb,
			     struct sctphdr *sctphdr,
			     struct sctp_association **app,
			     struct sctp_transport **tpp)
{
	struct sctp_init_chunk *chunkhdr, _chunkhdr;
	union sctp_addr saddr;
	union sctp_addr daddr;
	struct sctp_af *af;
	struct sock *sk = NULL;
	struct sctp_association *asoc;
	struct sctp_transport *transport = NULL;
	__u32 vtag = FUNC3(sctphdr->vtag);

	*app = NULL; *tpp = NULL;

	af = FUNC4(family);
	if (FUNC11(!af)) {
		return NULL;
	}

	/* Initialize local addresses for lookups. */
	af->from_skb(&saddr, skb, 1);
	af->from_skb(&daddr, skb, 0);

	/* Look for an association that matches the incoming ICMP error
	 * packet.
	 */
	asoc = FUNC1(net, &saddr, &daddr, &transport);
	if (!asoc)
		return NULL;

	sk = asoc->base.sk;

	/* RFC 4960, Appendix C. ICMP Handling
	 *
	 * ICMP6) An implementation MUST validate that the Verification Tag
	 * contained in the ICMP message matches the Verification Tag of
	 * the peer.  If the Verification Tag is not 0 and does NOT
	 * match, discard the ICMP message.  If it is 0 and the ICMP
	 * message contains enough bytes to verify that the chunk type is
	 * an INIT chunk and that the Initiate Tag matches the tag of the
	 * peer, continue with ICMP7.  If the ICMP message is too short
	 * or the chunk type or the Initiate Tag does not match, silently
	 * discard the packet.
	 */
	if (vtag == 0) {
		/* chunk header + first 4 octects of init header */
		chunkhdr = FUNC6(skb, FUNC7(skb) +
					      sizeof(struct sctphdr),
					      sizeof(struct sctp_chunkhdr) +
					      sizeof(__be32), &_chunkhdr);
		if (!chunkhdr ||
		    chunkhdr->chunk_hdr.type != SCTP_CID_INIT ||
		    FUNC3(chunkhdr->init_hdr.init_tag) != asoc->c.my_vtag)
			goto out;

	} else if (vtag != asoc->c.peer_vtag) {
		goto out;
	}

	FUNC2(sk);

	/* If too many ICMPs get dropped on busy
	 * servers this needs to be solved differently.
	 */
	if (FUNC8(sk))
		FUNC0(net, LINUX_MIB_LOCKDROPPEDICMPS);

	*app = asoc;
	*tpp = transport;
	return sk;

out:
	FUNC5(transport);
	return NULL;
}