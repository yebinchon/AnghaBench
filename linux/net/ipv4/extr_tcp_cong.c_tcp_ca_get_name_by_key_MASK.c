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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_congestion_ops {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CA_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_congestion_ops* FUNC3 (int /*<<< orphan*/ ) ; 

char *FUNC4(u32 key, char *buffer)
{
	const struct tcp_congestion_ops *ca;
	char *ret = NULL;

	FUNC0();
	ca = FUNC3(key);
	if (ca)
		ret = FUNC2(buffer, ca->name,
			      TCP_CA_NAME_MAX);
	FUNC1();

	return ret;
}