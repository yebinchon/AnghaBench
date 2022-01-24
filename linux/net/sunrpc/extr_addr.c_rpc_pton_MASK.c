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
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (char const*,size_t const,struct sockaddr*,size_t const) ; 
 size_t FUNC1 (struct net*,char const*,size_t const,struct sockaddr*,size_t const) ; 

size_t FUNC2(struct net *net, const char *buf, const size_t buflen,
		struct sockaddr *sap, const size_t salen)
{
	unsigned int i;

	for (i = 0; i < buflen; i++)
		if (buf[i] == ':')
			return FUNC1(net, buf, buflen, sap, salen);
	return FUNC0(buf, buflen, sap, salen);
}