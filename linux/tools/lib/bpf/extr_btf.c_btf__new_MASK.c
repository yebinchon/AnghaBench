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
struct btf {int fd; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int ENOMEM ; 
 struct btf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btf*) ; 
 int FUNC2 (struct btf*) ; 
 int FUNC3 (struct btf*) ; 
 int FUNC4 (struct btf*) ; 
 struct btf* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct btf *FUNC8(__u8 *data, __u32 size)
{
	struct btf *btf;
	int err;

	btf = FUNC5(1, sizeof(struct btf));
	if (!btf)
		return FUNC0(-ENOMEM);

	btf->fd = -1;

	btf->data = FUNC6(size);
	if (!btf->data) {
		err = -ENOMEM;
		goto done;
	}

	FUNC7(btf->data, data, size);
	btf->data_size = size;

	err = FUNC2(btf);
	if (err)
		goto done;

	err = FUNC3(btf);
	if (err)
		goto done;

	err = FUNC4(btf);

done:
	if (err) {
		FUNC1(btf);
		return FUNC0(err);
	}

	return btf;
}