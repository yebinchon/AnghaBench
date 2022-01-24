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
struct scp_msg {void* data; int /*<<< orphan*/  hdr; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  scp_send ;
typedef  int /*<<< orphan*/  scp_reply ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int SCP_GET ; 
 unsigned int SCP_MAX_DATA_WORDS ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*) ; 
 int FUNC1 (struct hda_codec*,unsigned char*,unsigned int,unsigned char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct scp_msg*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec,
		int mod_id, int src_id, int req, int dir, const void *data,
		unsigned int len, void *reply, unsigned int *reply_len)
{
	int status = 0;
	struct scp_msg scp_send, scp_reply;
	unsigned int ret_bytes, send_size, ret_size;
	unsigned int send_get_flag, reply_resp_flag, reply_error_flag;
	unsigned int reply_data_size;

	FUNC5(&scp_send, 0, sizeof(scp_send));
	FUNC5(&scp_reply, 0, sizeof(scp_reply));

	if ((len != 0 && data == NULL) || (len > SCP_MAX_DATA_WORDS))
		return -EINVAL;

	if (dir == SCP_GET && reply == NULL) {
		FUNC0(codec, "dspio_scp get but has no buffer\n");
		return -EINVAL;
	}

	if (reply != NULL && (reply_len == NULL || (*reply_len == 0))) {
		FUNC0(codec, "dspio_scp bad resp buf len parms\n");
		return -EINVAL;
	}

	scp_send.hdr = FUNC3(mod_id, src_id, (dir == SCP_GET), req,
				       0, 0, 0, len/sizeof(unsigned int));
	if (data != NULL && len > 0) {
		len = FUNC6((unsigned int)(sizeof(scp_send.data)), len);
		FUNC4(scp_send.data, data, len);
	}

	ret_bytes = 0;
	send_size = sizeof(unsigned int) + len;
	status = FUNC1(codec, (unsigned char *)&scp_send,
					send_size, (unsigned char *)&scp_reply,
					sizeof(scp_reply), &ret_bytes);

	if (status < 0) {
		FUNC0(codec, "dspio_scp: send scp msg failed\n");
		return status;
	}

	/* extract send and reply headers members */
	FUNC2(scp_send.hdr, NULL, NULL, &send_get_flag,
			   NULL, NULL, NULL, NULL, NULL);
	FUNC2(scp_reply.hdr, NULL, NULL, NULL, NULL, NULL,
			   &reply_resp_flag, &reply_error_flag,
			   &reply_data_size);

	if (!send_get_flag)
		return 0;

	if (reply_resp_flag && !reply_error_flag) {
		ret_size = (ret_bytes - sizeof(scp_reply.hdr))
					/ sizeof(unsigned int);

		if (*reply_len < ret_size*sizeof(unsigned int)) {
			FUNC0(codec, "reply too long for buf\n");
			return -EINVAL;
		} else if (ret_size != reply_data_size) {
			FUNC0(codec, "RetLen and HdrLen .NE.\n");
			return -EINVAL;
		} else if (!reply) {
			FUNC0(codec, "NULL reply\n");
			return -EINVAL;
		} else {
			*reply_len = ret_size*sizeof(unsigned int);
			FUNC4(reply, scp_reply.data, *reply_len);
		}
	} else {
		FUNC0(codec, "reply ill-formed or errflag set\n");
		return -EIO;
	}

	return status;
}