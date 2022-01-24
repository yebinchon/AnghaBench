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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net*,char*,size_t,struct sockaddr*,size_t) ; 
 scalar_t__ FUNC1 (struct net*,char*,size_t,struct sockaddr*,size_t) ; 

__attribute__((used)) static size_t FUNC2(char *string, size_t len,
		struct sockaddr *sa, size_t salen, struct net *net)
{
	ssize_t ret;

	ret = FUNC1(net, string, len, sa, salen);
	if (ret == 0) {
		ret = FUNC0(net, string, len, sa, salen);
		if (ret < 0)
			ret = 0;
	}
	return ret;
}