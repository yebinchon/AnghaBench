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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  protocol; } ;
struct clusterip_config {int hash_mode; int /*<<< orphan*/  num_total_nodes; int /*<<< orphan*/  hash_initval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CLUSTERIP_HASHMODE_SIP 130 
#define  CLUSTERIP_HASHMODE_SIP_SPT 129 
#define  CLUSTERIP_HASHMODE_SIP_SPT_DPT 128 
 struct iphdr* FUNC1 (struct sk_buff const*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct sk_buff const*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline u_int32_t
FUNC11(const struct sk_buff *skb,
		 const struct clusterip_config *config)
{
	const struct iphdr *iph = FUNC1(skb);
	unsigned long hashval;
	u_int16_t sport = 0, dport = 0;
	int poff;

	poff = FUNC8(iph->protocol);
	if (poff >= 0) {
		const u_int16_t *ports;
		u16 _ports[2];

		ports = FUNC10(skb, iph->ihl * 4 + poff, 4, _ports);
		if (ports) {
			sport = ports[0];
			dport = ports[1];
		}
	} else {
		FUNC5("unknown protocol %u\n", iph->protocol);
	}

	switch (config->hash_mode) {
	case CLUSTERIP_HASHMODE_SIP:
		hashval = FUNC2(FUNC6(iph->saddr),
				      config->hash_initval);
		break;
	case CLUSTERIP_HASHMODE_SIP_SPT:
		hashval = FUNC3(FUNC6(iph->saddr), sport,
				       config->hash_initval);
		break;
	case CLUSTERIP_HASHMODE_SIP_SPT_DPT:
		hashval = FUNC4(FUNC6(iph->saddr), sport, dport,
				       config->hash_initval);
		break;
	default:
		/* to make gcc happy */
		hashval = 0;
		/* This cannot happen, unless the check function wasn't called
		 * at rule load time */
		FUNC7("unknown mode %u\n", config->hash_mode);
		FUNC0();
		break;
	}

	/* node numbers are 1..n, not 0..n */
	return FUNC9(hashval, config->num_total_nodes) + 1;
}