#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
typedef  enum kernel_read_file_id { ____Placeholder_kernel_read_file_id } kernel_read_file_id ;
struct TYPE_3__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EFBIG ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int READING_FIRMWARE_PREALLOC_BUFFER ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int FUNC2 (struct file*) ; 
 TYPE_1__* FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct file*,void*,scalar_t__,scalar_t__*) ; 
 int FUNC6 (struct file*,void*,scalar_t__,int) ; 
 int FUNC7 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (scalar_t__) ; 

int FUNC10(struct file *file, void **buf, loff_t *size,
		     loff_t max_size, enum kernel_read_file_id id)
{
	loff_t i_size, pos;
	ssize_t bytes = 0;
	int ret;

	if (!FUNC0(FUNC3(file)->i_mode) || max_size < 0)
		return -EINVAL;

	ret = FUNC2(file);
	if (ret)
		return ret;

	ret = FUNC7(file, id);
	if (ret)
		goto out;

	i_size = FUNC4(FUNC3(file));
	if (i_size <= 0) {
		ret = -EINVAL;
		goto out;
	}
	if (i_size > SIZE_MAX || (max_size > 0 && i_size > max_size)) {
		ret = -EFBIG;
		goto out;
	}

	if (id != READING_FIRMWARE_PREALLOC_BUFFER)
		*buf = FUNC9(i_size);
	if (!*buf) {
		ret = -ENOMEM;
		goto out;
	}

	pos = 0;
	while (pos < i_size) {
		bytes = FUNC5(file, *buf + pos, i_size - pos, &pos);
		if (bytes < 0) {
			ret = bytes;
			goto out_free;
		}

		if (bytes == 0)
			break;
	}

	if (pos != i_size) {
		ret = -EIO;
		goto out_free;
	}

	ret = FUNC6(file, *buf, i_size, id);
	if (!ret)
		*size = pos;

out_free:
	if (ret < 0) {
		if (id != READING_FIRMWARE_PREALLOC_BUFFER) {
			FUNC8(*buf);
			*buf = NULL;
		}
	}

out:
	FUNC1(file);
	return ret;
}