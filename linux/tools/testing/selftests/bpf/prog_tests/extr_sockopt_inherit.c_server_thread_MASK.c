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
 int /*<<< orphan*/  CUSTOM_INHERIT1 ; 
 int /*<<< orphan*/  CUSTOM_INHERIT2 ; 
 int /*<<< orphan*/  CUSTOM_LISTENER ; 
 int FUNC1 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server_started ; 
 int /*<<< orphan*/  server_started_mtx ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void *FUNC9(void *arg)
{
	struct sockaddr_storage addr;
	socklen_t len = sizeof(addr);
	int fd = *(int *)arg;
	int client_fd;
	int err = 0;

	err = FUNC3(fd, 1);

	FUNC6(&server_started_mtx);
	FUNC5(&server_started);
	FUNC7(&server_started_mtx);

	if (FUNC0(err < 0)) {
		FUNC4("Failed to listed on socket");
		return NULL;
	}

	err += FUNC8(fd, CUSTOM_INHERIT1, "listen", 1);
	err += FUNC8(fd, CUSTOM_INHERIT2, "listen", 1);
	err += FUNC8(fd, CUSTOM_LISTENER, "listen", 1);

	client_fd = FUNC1(fd, (struct sockaddr *)&addr, &len);
	if (FUNC0(client_fd < 0)) {
		FUNC4("Failed to accept client");
		return NULL;
	}

	err += FUNC8(client_fd, CUSTOM_INHERIT1, "accept", 1);
	err += FUNC8(client_fd, CUSTOM_INHERIT2, "accept", 1);
	err += FUNC8(client_fd, CUSTOM_LISTENER, "accept", 0);

	FUNC2(client_fd);

	return (void *)(long)err;
}