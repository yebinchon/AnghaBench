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
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/ ) ; 
 struct inet_listen_hashbucket* FUNC2 (struct inet_hashinfo*,unsigned int) ; 
 struct sock* FUNC3 (struct net*,struct inet_listen_hashbucket*,struct sk_buff*,int,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const,unsigned short const,int const,int const) ; 
 unsigned int FUNC4 (struct net*,int /*<<< orphan*/  const,unsigned short const) ; 

struct sock *FUNC5(struct net *net,
				    struct inet_hashinfo *hashinfo,
				    struct sk_buff *skb, int doff,
				    const __be32 saddr, __be16 sport,
				    const __be32 daddr, const unsigned short hnum,
				    const int dif, const int sdif)
{
	struct inet_listen_hashbucket *ilb2;
	struct sock *result = NULL;
	unsigned int hash2;

	hash2 = FUNC4(net, daddr, hnum);
	ilb2 = FUNC2(hashinfo, hash2);

	result = FUNC3(net, ilb2, skb, doff,
				    saddr, sport, daddr, hnum,
				    dif, sdif);
	if (result)
		goto done;

	/* Lookup lhash2 with INADDR_ANY */
	hash2 = FUNC4(net, FUNC1(INADDR_ANY), hnum);
	ilb2 = FUNC2(hashinfo, hash2);

	result = FUNC3(net, ilb2, skb, doff,
				    saddr, sport, FUNC1(INADDR_ANY), hnum,
				    dif, sdif);
done:
	if (FUNC0(result))
		return NULL;
	return result;
}