#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct sdp_media_type {int /*<<< orphan*/  class; scalar_t__ len; } ;
struct nf_nat_sip_hooks {int (* sdp_addr ) (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union nf_inet_addr*) ;int (* sdp_session ) (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,union nf_inet_addr*) ;} ;
struct nf_conn {int status; } ;
typedef  int /*<<< orphan*/  rtp_addr ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int IPS_NAT_MASK ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 int /*<<< orphan*/  SDP_HDR_CONNECTION ; 
 int /*<<< orphan*/  SDP_HDR_MEDIA ; 
 int /*<<< orphan*/  SDP_HDR_UNSPEC ; 
 int /*<<< orphan*/  SDP_HDR_VERSION ; 
 scalar_t__ FUNC1 (struct nf_conn*,char const*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC2 (struct nf_conn*,char const*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,unsigned int*,union nf_inet_addr*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (union nf_inet_addr*,union nf_inet_addr*,int) ; 
 struct nf_conn* FUNC5 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nf_conn*,char*,...) ; 
 int /*<<< orphan*/  nf_nat_sip_hooks ; 
 struct nf_nat_sip_hooks* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sdp_media_type* FUNC8 (char const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  sdp_media_types ; 
 int FUNC9 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,union nf_inet_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC10 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union nf_inet_addr*) ; 
 int FUNC12 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,union nf_inet_addr*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, unsigned int protoff,
		       unsigned int dataoff,
		       const char **dptr, unsigned int *datalen,
		       unsigned int cseq)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC5(skb, &ctinfo);
	unsigned int matchoff, matchlen;
	unsigned int mediaoff, medialen;
	unsigned int sdpoff;
	unsigned int caddr_len, maddr_len;
	unsigned int i;
	union nf_inet_addr caddr, maddr, rtp_addr;
	const struct nf_nat_sip_hooks *hooks;
	unsigned int port;
	const struct sdp_media_type *t;
	int ret = NF_ACCEPT;

	hooks = FUNC7(nf_nat_sip_hooks);

	/* Find beginning of session description */
	if (FUNC1(ct, *dptr, 0, *datalen,
				  SDP_HDR_VERSION, SDP_HDR_UNSPEC,
				  &matchoff, &matchlen) <= 0)
		return NF_ACCEPT;
	sdpoff = matchoff;

	/* The connection information is contained in the session description
	 * and/or once per media description. The first media description marks
	 * the end of the session description. */
	caddr_len = 0;
	if (FUNC2(ct, *dptr, sdpoff, *datalen,
				  SDP_HDR_CONNECTION, SDP_HDR_MEDIA,
				  &matchoff, &matchlen, &caddr) > 0)
		caddr_len = matchlen;

	mediaoff = sdpoff;
	for (i = 0; i < FUNC0(sdp_media_types); ) {
		if (FUNC1(ct, *dptr, mediaoff, *datalen,
					  SDP_HDR_MEDIA, SDP_HDR_UNSPEC,
					  &mediaoff, &medialen) <= 0)
			break;

		/* Get media type and port number. A media port value of zero
		 * indicates an inactive stream. */
		t = FUNC8(*dptr, mediaoff, medialen);
		if (!t) {
			mediaoff += medialen;
			continue;
		}
		mediaoff += t->len;
		medialen -= t->len;

		port = FUNC10(*dptr + mediaoff, NULL, 10);
		if (port == 0)
			continue;
		if (port < 1024 || port > 65535) {
			FUNC6(skb, ct, "wrong port %u", port);
			return NF_DROP;
		}

		/* The media description overrides the session description. */
		maddr_len = 0;
		if (FUNC2(ct, *dptr, mediaoff, *datalen,
					  SDP_HDR_CONNECTION, SDP_HDR_MEDIA,
					  &matchoff, &matchlen, &maddr) > 0) {
			maddr_len = matchlen;
			FUNC4(&rtp_addr, &maddr, sizeof(rtp_addr));
		} else if (caddr_len)
			FUNC4(&rtp_addr, &caddr, sizeof(rtp_addr));
		else {
			FUNC6(skb, ct, "cannot parse SDP message");
			return NF_DROP;
		}

		ret = FUNC9(skb, protoff, dataoff,
					    dptr, datalen,
					    &rtp_addr, FUNC3(port), t->class,
					    mediaoff, medialen);
		if (ret != NF_ACCEPT) {
			FUNC6(skb, ct,
					 "cannot add expectation for voice");
			return ret;
		}

		/* Update media connection address if present */
		if (maddr_len && hooks && ct->status & IPS_NAT_MASK) {
			ret = hooks->sdp_addr(skb, protoff, dataoff,
					      dptr, datalen, mediaoff,
					      SDP_HDR_CONNECTION,
					      SDP_HDR_MEDIA,
					      &rtp_addr);
			if (ret != NF_ACCEPT) {
				FUNC6(skb, ct, "cannot mangle SDP");
				return ret;
			}
		}
		i++;
	}

	/* Update session connection and owner addresses */
	hooks = FUNC7(nf_nat_sip_hooks);
	if (hooks && ct->status & IPS_NAT_MASK)
		ret = hooks->sdp_session(skb, protoff, dataoff,
					 dptr, datalen, sdpoff,
					 &rtp_addr);

	return ret;
}