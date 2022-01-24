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
typedef  int /*<<< orphan*/  uuid_le ;
struct mei_client {unsigned char max_msg_length; unsigned char protocol_version; } ;
struct mei_connect_client_data {struct mei_client out_client_properties; int /*<<< orphan*/  const in_client_uuid; } ;
struct mei {int verbose; int fd; int initialized; unsigned char buf_size; unsigned char prot_ver; int /*<<< orphan*/  const guid; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  IOCTL_MEI_CONNECT_CLIENT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct mei_connect_client_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct mei*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mei*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_connect_client_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct mei *me, const uuid_le *guid,
		unsigned char req_protocol_version, bool verbose)
{
	int result;
	struct mei_client *cl;
	struct mei_connect_client_data data;

	me->verbose = verbose;

	me->fd = FUNC6("/dev/mei0", O_RDWR);
	if (me->fd == -1) {
		FUNC2(me, "Cannot establish a handle to the Intel MEI driver\n");
		goto err;
	}
	FUNC4(&me->guid, guid, sizeof(*guid));
	FUNC5(&data, 0, sizeof(data));
	me->initialized = true;

	FUNC4(&data.in_client_uuid, &me->guid, sizeof(me->guid));
	result = FUNC0(me->fd, IOCTL_MEI_CONNECT_CLIENT, &data);
	if (result) {
		FUNC2(me, "IOCTL_MEI_CONNECT_CLIENT receive message. err=%d\n", result);
		goto err;
	}
	cl = &data.out_client_properties;
	FUNC3(me, "max_message_length %d\n", cl->max_msg_length);
	FUNC3(me, "protocol_version %d\n", cl->protocol_version);

	if ((req_protocol_version > 0) &&
	     (cl->protocol_version != req_protocol_version)) {
		FUNC2(me, "Intel MEI protocol version not supported\n");
		goto err;
	}

	me->buf_size = cl->max_msg_length;
	me->prot_ver = cl->protocol_version;

	return true;
err:
	FUNC1(me);
	return false;
}