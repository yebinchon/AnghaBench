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
struct socket_info {int sockfd; int datafd; } ;
struct ion_buffer_info {int buffd; unsigned long buflen; unsigned char* buffer; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 void* ION_BUFFER_LEN ; 
 int /*<<< orphan*/  SOCKET_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ion_buffer_info*) ; 
 int FUNC3 (struct ion_buffer_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ion_buffer_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned long) ; 
 int FUNC8 (struct socket_info*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned long) ; 

int FUNC10(void)
{
	int ret, status;
	int sockfd, shared_fd;
	unsigned char *map_buf;
	unsigned long map_len;
	struct ion_buffer_info info;
	struct socket_info skinfo;

	/* This is the client part. Here 0 means client or importer */
	status = FUNC5(&sockfd, SOCKET_NAME, 0);
	if (status < 0) {
		FUNC1(stderr, "No exporter exists...\n");
		ret = status;
		goto err_socket;
	}

	skinfo.sockfd = sockfd;

	ret = FUNC8(&skinfo);
	if (ret < 0) {
		FUNC1(stderr, "Failed: socket_receive_fd\n");
		goto err_recv;
	}

	shared_fd = skinfo.datafd;
	FUNC6("Received buffer fd: %d\n", shared_fd);
	if (shared_fd <= 0) {
		FUNC1(stderr, "ERROR: improper buf fd\n");
		ret = -1;
		goto err_fd;
	}

	FUNC4(&info, 0, sizeof(info));
	info.buffd = shared_fd;
	info.buflen = ION_BUFFER_LEN;

	ret = FUNC3(&info);
	if (ret < 0) {
		FUNC1(stderr, "Failed: ion_use_buffer_fd\n");
		goto err_import;
	}

	map_buf = info.buffer;
	map_len = info.buflen;
	FUNC7(map_buf, map_len);

	/* Write probably new data to the same buffer again */
	map_len = ION_BUFFER_LEN;
	FUNC9(map_buf, map_len);

err_import:
	FUNC2(&info);
err_fd:
err_recv:
err_socket:
	FUNC0(sockfd, SOCKET_NAME);

	return ret;
}