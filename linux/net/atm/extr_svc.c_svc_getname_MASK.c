#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {int dummy; } ;
struct sockaddr_atmsvc {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  local; int /*<<< orphan*/  remote; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_atmsvc*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct socket *sock, struct sockaddr *sockaddr,
		       int peer)
{
	struct sockaddr_atmsvc *addr;

	addr = (struct sockaddr_atmsvc *) sockaddr;
	FUNC1(addr, peer ? &FUNC0(sock)->remote : &FUNC0(sock)->local,
	       sizeof(struct sockaddr_atmsvc));
	return sizeof(struct sockaddr_atmsvc);
}