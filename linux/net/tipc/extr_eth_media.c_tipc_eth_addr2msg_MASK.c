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
struct tipc_media_addr {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int TIPC_MEDIA_ADDR_OFFSET ; 
 int /*<<< orphan*/  TIPC_MEDIA_INFO_SIZE ; 
 char TIPC_MEDIA_TYPE_ETH ; 
 size_t TIPC_MEDIA_TYPE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(char *msg, struct tipc_media_addr *addr)
{
	FUNC1(msg, 0, TIPC_MEDIA_INFO_SIZE);
	msg[TIPC_MEDIA_TYPE_OFFSET] = TIPC_MEDIA_TYPE_ETH;
	FUNC0(msg + TIPC_MEDIA_ADDR_OFFSET, addr->value, ETH_ALEN);
	return 0;
}