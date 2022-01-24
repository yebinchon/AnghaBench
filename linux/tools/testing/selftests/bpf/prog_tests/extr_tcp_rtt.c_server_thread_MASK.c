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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server_started ; 
 int /*<<< orphan*/  server_started_mtx ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
	struct sockaddr_storage addr;
	socklen_t len = sizeof(addr);
	int fd = *(int *)arg;
	int client_fd;
	int err;

	err = FUNC3(fd, 1);

	FUNC6(&server_started_mtx);
	FUNC5(&server_started);
	FUNC7(&server_started_mtx);

	if (FUNC0(err < 0)) {
		FUNC4("Failed to listed on socket");
		return NULL;
	}

	client_fd = FUNC1(fd, (struct sockaddr *)&addr, &len);
	if (FUNC0(client_fd < 0)) {
		FUNC4("Failed to accept client");
		return NULL;
	}

	/* Wait for the next connection (that never arrives)
	 * to keep this thread alive to prevent calling
	 * close() on client_fd.
	 */
	if (FUNC0(FUNC1(fd, (struct sockaddr *)&addr, &len) >= 0)) {
		FUNC4("Unexpected success in second accept");
		return NULL;
	}

	FUNC2(client_fd);

	return NULL;
}