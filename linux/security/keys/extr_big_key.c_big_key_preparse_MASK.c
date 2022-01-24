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
typedef  int /*<<< orphan*/  u8 ;
struct path {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** data; } ;
struct key_preparsed_payload {size_t datalen; int quotalen; int /*<<< orphan*/  data; TYPE_1__ payload; } ;
struct file {struct path f_path; } ;
struct big_key_buf {void* virt; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIG_KEY_ENC ; 
 size_t BIG_KEY_FILE_THRESHOLD ; 
 int EINVAL ; 
 size_t ENC_AUTHTAG_SIZE ; 
 size_t ENC_KEY_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 struct big_key_buf* FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct big_key_buf*,size_t,int /*<<< orphan*/ *) ; 
 size_t big_key_data ; 
 int /*<<< orphan*/  FUNC4 (struct big_key_buf*) ; 
 size_t big_key_len ; 
 size_t big_key_path ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (struct file*,void*,size_t,int /*<<< orphan*/ *) ; 
 void* FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 struct file* FUNC12 (char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct key_preparsed_payload *prep)
{
	struct big_key_buf *buf;
	struct path *path = (struct path *)&prep->payload.data[big_key_path];
	struct file *file;
	u8 *enckey;
	ssize_t written;
	size_t datalen = prep->datalen, enclen = datalen + ENC_AUTHTAG_SIZE;
	int ret;

	if (datalen <= 0 || datalen > 1024 * 1024 || !prep->data)
		return -EINVAL;

	/* Set an arbitrary quota */
	prep->quotalen = 16;

	prep->payload.data[big_key_len] = (void *)(unsigned long)datalen;

	if (datalen > BIG_KEY_FILE_THRESHOLD) {
		/* Create a shmem file to store the data in.  This will permit the data
		 * to be swapped out if needed.
		 *
		 * File content is stored encrypted with randomly generated key.
		 */
		loff_t pos = 0;

		buf = FUNC2(enclen);
		if (!buf)
			return -ENOMEM;
		FUNC10(buf->virt, prep->data, datalen);

		/* generate random key */
		enckey = FUNC8(ENC_KEY_SIZE, GFP_KERNEL);
		if (!enckey) {
			ret = -ENOMEM;
			goto error;
		}
		ret = FUNC6(enckey, ENC_KEY_SIZE);
		if (FUNC13(ret))
			goto err_enckey;

		/* encrypt aligned data */
		ret = FUNC3(BIG_KEY_ENC, buf, datalen, enckey);
		if (ret)
			goto err_enckey;

		/* save aligned data to file */
		file = FUNC12("", enclen, 0);
		if (FUNC0(file)) {
			ret = FUNC1(file);
			goto err_enckey;
		}

		written = FUNC7(file, buf->virt, enclen, &pos);
		if (written != enclen) {
			ret = written;
			if (written >= 0)
				ret = -ENOMEM;
			goto err_fput;
		}

		/* Pin the mount and dentry to the key so that we can open it again
		 * later
		 */
		prep->payload.data[big_key_data] = enckey;
		*path = file->f_path;
		FUNC11(path);
		FUNC5(file);
		FUNC4(buf);
	} else {
		/* Just store the data in a buffer */
		void *data = FUNC8(datalen, GFP_KERNEL);

		if (!data)
			return -ENOMEM;

		prep->payload.data[big_key_data] = data;
		FUNC10(data, prep->data, prep->datalen);
	}
	return 0;

err_fput:
	FUNC5(file);
err_enckey:
	FUNC9(enckey);
error:
	FUNC4(buf);
	return ret;
}