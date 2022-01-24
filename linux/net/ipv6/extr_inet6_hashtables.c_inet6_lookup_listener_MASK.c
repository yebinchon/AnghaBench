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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct inet_listen_hashbucket {int dummy; } ;
struct inet_hashinfo {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sock*) ; 
 struct in6_addr const in6addr_any ; 
 struct sock* FUNC1 (struct net*,struct inet_listen_hashbucket*,struct sk_buff*,int,struct in6_addr const*,int /*<<< orphan*/  const,struct in6_addr const*,unsigned short const,int const,int const) ; 
 struct inet_listen_hashbucket* FUNC2 (struct inet_hashinfo*,unsigned int) ; 
 unsigned int FUNC3 (struct net*,struct in6_addr const*,unsigned short const) ; 

struct sock *FUNC4(struct net *net,
		struct inet_hashinfo *hashinfo,
		struct sk_buff *skb, int doff,
		const struct in6_addr *saddr,
		const __be16 sport, const struct in6_addr *daddr,
		const unsigned short hnum, const int dif, const int sdif)
{
	struct inet_listen_hashbucket *ilb2;
	struct sock *result = NULL;
	unsigned int hash2;

	hash2 = FUNC3(net, daddr, hnum);
	ilb2 = FUNC2(hashinfo, hash2);

	result = FUNC1(net, ilb2, skb, doff,
				     saddr, sport, daddr, hnum,
				     dif, sdif);
	if (result)
		goto done;

	/* Lookup lhash2 with in6addr_any */
	hash2 = FUNC3(net, &in6addr_any, hnum);
	ilb2 = FUNC2(hashinfo, hash2);

	result = FUNC1(net, ilb2, skb, doff,
				     saddr, sport, &in6addr_any, hnum,
				     dif, sdif);
done:
	if (FUNC0(result))
		return NULL;
	return result;
}