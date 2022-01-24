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
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 

int FUNC4(int smap_fd, int amap_fd, int stack_trace_len)
{
	__u32 key, next_key, *cur_key_p, *next_key_p;
	char *val_buf1, *val_buf2;
	int i, err = 0;

	val_buf1 = FUNC3(stack_trace_len);
	val_buf2 = FUNC3(stack_trace_len);
	cur_key_p = NULL;
	next_key_p = &key;
	while (FUNC0(smap_fd, cur_key_p, next_key_p) == 0) {
		err = FUNC1(smap_fd, next_key_p, val_buf1);
		if (err)
			goto out;
		err = FUNC1(amap_fd, next_key_p, val_buf2);
		if (err)
			goto out;
		for (i = 0; i < stack_trace_len; i++) {
			if (val_buf1[i] != val_buf2[i]) {
				err = -1;
				goto out;
			}
		}
		key = *next_key_p;
		cur_key_p = &key;
		next_key_p = &next_key;
	}
	if (errno != ENOENT)
		err = -1;

out:
	FUNC2(val_buf1);
	FUNC2(val_buf2);
	return err;
}