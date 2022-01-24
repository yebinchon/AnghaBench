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
typedef  int /*<<< orphan*/  tmp_addr ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  serv_addr ;
typedef  int /*<<< orphan*/  mapped_addr ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  BPF_ANY ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int*) ; 
 scalar_t__ FUNC6 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (TYPE_1__) ; 
 scalar_t__ FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/ * map_fd ; 
 scalar_t__ FUNC13 (struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*) ; 
 int FUNC18 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC19(int ac, char **argv)
{
	int serverfd, serverconnfd, clientfd;
	socklen_t sockaddr_len;
	struct sockaddr serv_addr, mapped_addr, tmp_addr;
	struct sockaddr_in *serv_addr_in, *mapped_addr_in, *tmp_addr_in;
	char filename[256];
	char *ip;

	serv_addr_in = (struct sockaddr_in *)&serv_addr;
	mapped_addr_in = (struct sockaddr_in *)&mapped_addr;
	tmp_addr_in = (struct sockaddr_in *)&tmp_addr;

	FUNC17(filename, sizeof(filename), "%s_kern.o", argv[0]);

	if (FUNC12(filename)) {
		FUNC16("%s", bpf_log_buf);
		return 1;
	}

	FUNC1((serverfd = FUNC18(AF_INET, SOCK_STREAM, 0)) > 0);
	FUNC1((clientfd = FUNC18(AF_INET, SOCK_STREAM, 0)) > 0);

	/* Bind server to ephemeral port on lo */
	FUNC14(&serv_addr, 0, sizeof(serv_addr));
	serv_addr_in->sin_family = AF_INET;
	serv_addr_in->sin_port = 0;
	serv_addr_in->sin_addr.s_addr = FUNC7(INADDR_LOOPBACK);

	FUNC1(FUNC2(serverfd, &serv_addr, sizeof(serv_addr)) == 0);

	sockaddr_len = sizeof(serv_addr);
	FUNC1(FUNC6(serverfd, &serv_addr, &sockaddr_len) == 0);
	ip = FUNC10(serv_addr_in->sin_addr);
	FUNC16("Server bound to: %s:%d\n", ip, FUNC15(serv_addr_in->sin_port));

	FUNC14(&mapped_addr, 0, sizeof(mapped_addr));
	mapped_addr_in->sin_family = AF_INET;
	mapped_addr_in->sin_port = FUNC8(5555);
	mapped_addr_in->sin_addr.s_addr = FUNC9("255.255.255.255");

	FUNC1(!FUNC3(map_fd[0], &mapped_addr, &serv_addr, BPF_ANY));

	FUNC1(FUNC11(serverfd, 5) == 0);

	ip = FUNC10(mapped_addr_in->sin_addr);
	FUNC16("Client connecting to: %s:%d\n",
	       ip, FUNC15(mapped_addr_in->sin_port));
	FUNC1(FUNC4(clientfd, &mapped_addr, sizeof(mapped_addr)) == 0);

	sockaddr_len = sizeof(tmp_addr);
	ip = FUNC10(tmp_addr_in->sin_addr);
	FUNC1((serverconnfd = FUNC0(serverfd, &tmp_addr, &sockaddr_len)) > 0);
	FUNC16("Server received connection from: %s:%d\n",
	       ip, FUNC15(tmp_addr_in->sin_port));

	sockaddr_len = sizeof(tmp_addr);
	FUNC1(FUNC5(clientfd, &tmp_addr, &sockaddr_len) == 0);
	ip = FUNC10(tmp_addr_in->sin_addr);
	FUNC16("Client's peer address: %s:%d\n",
	       ip, FUNC15(tmp_addr_in->sin_port));

	/* Is the server's getsockname = the socket getpeername */
	FUNC1(FUNC13(&serv_addr, &tmp_addr, sizeof(struct sockaddr_in)) == 0);

	return 0;
}