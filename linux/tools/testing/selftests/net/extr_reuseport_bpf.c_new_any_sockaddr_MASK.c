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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 struct sockaddr_storage* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct sockaddr *FUNC5(int family, uint16_t port)
{
	struct sockaddr_storage *addr;
	struct sockaddr_in *addr4;
	struct sockaddr_in6 *addr6;

	addr = FUNC3(sizeof(struct sockaddr_storage));
	FUNC4(addr, 0, sizeof(struct sockaddr_storage));

	switch (family) {
	case AF_INET:
		addr4 = (struct sockaddr_in *)addr;
		addr4->sin_family = AF_INET;
		addr4->sin_addr.s_addr = FUNC1(INADDR_ANY);
		addr4->sin_port = FUNC2(port);
		break;
	case AF_INET6:
		addr6 = (struct sockaddr_in6 *)addr;
		addr6->sin6_family = AF_INET6;
		addr6->sin6_addr = in6addr_any;
		addr6->sin6_port = FUNC2(port);
		break;
	default:
		FUNC0(1, 0, "Unsupported family %d", family);
	}
	return (struct sockaddr *)addr;
}