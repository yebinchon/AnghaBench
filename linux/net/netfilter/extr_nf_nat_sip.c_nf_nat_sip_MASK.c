#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct udphdr {scalar_t__ dest; } ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  len; } ;
struct nf_ct_sip_master {scalar_t__ forced_dport; } ;
struct nf_conn {TYPE_8__* tuplehash; } ;
typedef  enum sip_header_types { ____Placeholder_sip_header_types } sip_header_types ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  scalar_t__ __be16 ;
struct TYPE_9__ {scalar_t__ port; } ;
struct TYPE_10__ {TYPE_1__ udp; } ;
struct TYPE_13__ {TYPE_2__ u; int /*<<< orphan*/  u3; } ;
struct TYPE_11__ {scalar_t__ port; } ;
struct TYPE_12__ {TYPE_3__ udp; } ;
struct TYPE_14__ {TYPE_4__ u; int /*<<< orphan*/  u3; } ;
struct TYPE_15__ {TYPE_5__ src; TYPE_6__ dst; } ;
struct TYPE_16__ {TYPE_7__ tuple; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 scalar_t__ IPPROTO_TCP ; 
 int IP_CT_DIR_REPLY ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int SIP_HDR_CONTACT ; 
 int /*<<< orphan*/  SIP_HDR_FROM ; 
 int /*<<< orphan*/  SIP_HDR_TO ; 
 int SIP_HDR_VIA_TCP ; 
 int SIP_HDR_VIA_UDP ; 
 scalar_t__ FUNC1 (struct nf_conn*,char const*,unsigned int,unsigned int,char*,unsigned int*,unsigned int*,union nf_inet_addr*,int) ; 
 scalar_t__ FUNC2 (struct nf_conn*,char const*,unsigned int*,unsigned int,int,int*,unsigned int*,unsigned int*,union nf_inet_addr*,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct nf_conn*,char const*,unsigned int,unsigned int,char*,unsigned int*,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC4 (struct nf_conn*,char const*,unsigned int,unsigned int*,unsigned int*,union nf_inet_addr*,scalar_t__*) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,unsigned int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,unsigned int,union nf_inet_addr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,int /*<<< orphan*/ ) ; 
 struct nf_conn* FUNC9 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct nf_conn*,char*) ; 
 scalar_t__ FUNC11 (struct nf_conn*) ; 
 scalar_t__ FUNC12 (union nf_inet_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct nf_conn*,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nf_ct_sip_master* FUNC14 (struct nf_conn*) ; 
 int FUNC15 (scalar_t__) ; 
 unsigned int FUNC16 (struct nf_conn*,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC21(struct sk_buff *skb, unsigned int protoff,
			       unsigned int dataoff,
			       const char **dptr, unsigned int *datalen)
{
	enum ip_conntrack_info ctinfo;
	struct nf_conn *ct = FUNC9(skb, &ctinfo);
	enum ip_conntrack_dir dir = FUNC0(ctinfo);
	struct nf_ct_sip_master *ct_sip_info = FUNC14(ct);
	unsigned int coff, matchoff, matchlen;
	enum sip_header_types hdr;
	union nf_inet_addr addr;
	__be16 port;
	int request, in_header;

	/* Basic rules: requests and responses. */
	if (FUNC20(*dptr, "SIP/2.0", FUNC19("SIP/2.0")) != 0) {
		if (FUNC4(ct, *dptr, *datalen,
					 &matchoff, &matchlen,
					 &addr, &port) > 0 &&
		    !FUNC7(skb, protoff, dataoff, dptr, datalen,
			      matchoff, matchlen, &addr, port)) {
			FUNC10(skb, ct, "cannot mangle SIP message");
			return NF_DROP;
		}
		request = 1;
	} else
		request = 0;

	if (FUNC11(ct) == IPPROTO_TCP)
		hdr = SIP_HDR_VIA_TCP;
	else
		hdr = SIP_HDR_VIA_UDP;

	/* Translate topmost Via header and parameters */
	if (FUNC2(ct, *dptr, NULL, *datalen,
				    hdr, NULL, &matchoff, &matchlen,
				    &addr, &port) > 0) {
		unsigned int olen, matchend, poff, plen, buflen, n;
		char buffer[INET6_ADDRSTRLEN + sizeof("[]:nnnnn")];

		/* We're only interested in headers related to this
		 * connection */
		if (request) {
			if (!FUNC12(&addr,
					&ct->tuplehash[dir].tuple.src.u3) ||
			    port != ct->tuplehash[dir].tuple.src.u.udp.port)
				goto next;
		} else {
			if (!FUNC12(&addr,
					&ct->tuplehash[dir].tuple.dst.u3) ||
			    port != ct->tuplehash[dir].tuple.dst.u.udp.port)
				goto next;
		}

		olen = *datalen;
		if (!FUNC7(skb, protoff, dataoff, dptr, datalen,
			      matchoff, matchlen, &addr, port)) {
			FUNC10(skb, ct, "cannot mangle Via header");
			return NF_DROP;
		}

		matchend = matchoff + matchlen + *datalen - olen;

		/* The maddr= parameter (RFC 2361) specifies where to send
		 * the reply. */
		if (FUNC1(ct, *dptr, matchend, *datalen,
					       "maddr=", &poff, &plen,
					       &addr, true) > 0 &&
		    FUNC12(&addr, &ct->tuplehash[dir].tuple.src.u3) &&
		    !FUNC12(&addr, &ct->tuplehash[!dir].tuple.dst.u3)) {
			buflen = FUNC16(ct, buffer,
					&ct->tuplehash[!dir].tuple.dst.u3,
					true);
			if (!FUNC6(skb, protoff, dataoff, dptr, datalen,
					   poff, plen, buffer, buflen)) {
				FUNC10(skb, ct, "cannot mangle maddr");
				return NF_DROP;
			}
		}

		/* The received= parameter (RFC 2361) contains the address
		 * from which the server received the request. */
		if (FUNC1(ct, *dptr, matchend, *datalen,
					       "received=", &poff, &plen,
					       &addr, false) > 0 &&
		    FUNC12(&addr, &ct->tuplehash[dir].tuple.dst.u3) &&
		    !FUNC12(&addr, &ct->tuplehash[!dir].tuple.src.u3)) {
			buflen = FUNC16(ct, buffer,
					&ct->tuplehash[!dir].tuple.src.u3,
					false);
			if (!FUNC6(skb, protoff, dataoff, dptr, datalen,
					   poff, plen, buffer, buflen)) {
				FUNC10(skb, ct, "cannot mangle received");
				return NF_DROP;
			}
		}

		/* The rport= parameter (RFC 3581) contains the port number
		 * from which the server received the request. */
		if (FUNC3(ct, *dptr, matchend, *datalen,
						 "rport=", &poff, &plen,
						 &n) > 0 &&
		    FUNC5(n) == ct->tuplehash[dir].tuple.dst.u.udp.port &&
		    FUNC5(n) != ct->tuplehash[!dir].tuple.src.u.udp.port) {
			__be16 p = ct->tuplehash[!dir].tuple.src.u.udp.port;
			buflen = FUNC18(buffer, "%u", FUNC15(p));
			if (!FUNC6(skb, protoff, dataoff, dptr, datalen,
					   poff, plen, buffer, buflen)) {
				FUNC10(skb, ct, "cannot mangle rport");
				return NF_DROP;
			}
		}
	}

next:
	/* Translate Contact headers */
	coff = 0;
	in_header = 0;
	while (FUNC2(ct, *dptr, &coff, *datalen,
				       SIP_HDR_CONTACT, &in_header,
				       &matchoff, &matchlen,
				       &addr, &port) > 0) {
		if (!FUNC7(skb, protoff, dataoff, dptr, datalen,
			      matchoff, matchlen,
			      &addr, port)) {
			FUNC10(skb, ct, "cannot mangle contact");
			return NF_DROP;
		}
	}

	if (!FUNC8(skb, protoff, dataoff, dptr, datalen, SIP_HDR_FROM) ||
	    !FUNC8(skb, protoff, dataoff, dptr, datalen, SIP_HDR_TO)) {
		FUNC10(skb, ct, "cannot mangle SIP from/to");
		return NF_DROP;
	}

	/* Mangle destination port for Cisco phones, then fix up checksums */
	if (dir == IP_CT_DIR_REPLY && ct_sip_info->forced_dport) {
		struct udphdr *uh;

		if (FUNC17(skb, skb->len)) {
			FUNC10(skb, ct, "cannot mangle packet");
			return NF_DROP;
		}

		uh = (void *)skb->data + protoff;
		uh->dest = ct_sip_info->forced_dport;

		if (!FUNC13(skb, ct, ctinfo, protoff,
					      0, 0, NULL, 0)) {
			FUNC10(skb, ct, "cannot mangle packet");
			return NF_DROP;
		}
	}

	return NF_ACCEPT;
}