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
struct addrinfo {char* ai_canonname; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 

__attribute__((used)) static void
FUNC6(char *buffer, int length)
{
	struct addrinfo	hints, *info ;
	int error = 0;

	FUNC3(buffer, length);
	FUNC4(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET; /*Get only ipv4 addrinfo. */
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_CANONNAME;

	error = FUNC2(buffer, NULL, &hints, &info);
	if (error != 0) {
		FUNC5(buffer, length, "getaddrinfo failed: 0x%x %s",
			error, FUNC1(error));
		return;
	}
	FUNC5(buffer, length, "%s", info->ai_canonname);
	FUNC0(info);
}