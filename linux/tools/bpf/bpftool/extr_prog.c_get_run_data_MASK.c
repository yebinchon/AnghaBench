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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 size_t FUNC4 (void*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 void* FUNC8 (void*,size_t) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const char *fname, void **data_ptr, unsigned int *size)
{
	size_t block_size = 256;
	size_t buf_size = block_size;
	size_t nb_read = 0;
	void *tmp;
	FILE *f;

	if (!fname) {
		*data_ptr = NULL;
		*size = 0;
		return 0;
	}

	if (!FUNC9(fname, "-"))
		f = stdin;
	else
		f = FUNC3(fname, "r");
	if (!f) {
		FUNC7("failed to open %s: %s", fname, FUNC10(errno));
		return -1;
	}

	*data_ptr = FUNC6(block_size);
	if (!*data_ptr) {
		FUNC7("failed to allocate memory for data_in/ctx_in: %s",
		      FUNC10(errno));
		goto err_fclose;
	}

	while ((nb_read += FUNC4(*data_ptr + nb_read, 1, block_size, f))) {
		if (FUNC1(f))
			break;
		if (FUNC2(f)) {
			FUNC7("failed to read data_in/ctx_in from %s: %s",
			      fname, FUNC10(errno));
			goto err_free;
		}
		if (nb_read > buf_size - block_size) {
			if (buf_size == UINT32_MAX) {
				FUNC7("data_in/ctx_in is too long (max: %d)",
				      UINT32_MAX);
				goto err_free;
			}
			/* No space for fread()-ing next chunk; realloc() */
			buf_size *= 2;
			tmp = FUNC8(*data_ptr, buf_size);
			if (!tmp) {
				FUNC7("failed to reallocate data_in/ctx_in: %s",
				      FUNC10(errno));
				goto err_free;
			}
			*data_ptr = tmp;
		}
	}
	if (f != stdin)
		FUNC0(f);

	*size = nb_read;
	return 0;

err_free:
	FUNC5(*data_ptr);
	*data_ptr = NULL;
err_fclose:
	if (f != stdin)
		FUNC0(f);
	return -1;
}