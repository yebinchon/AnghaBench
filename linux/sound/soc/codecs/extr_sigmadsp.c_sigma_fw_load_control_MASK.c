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
struct sigmadsp_control {char* name; unsigned int num_bytes; int /*<<< orphan*/  head; int /*<<< orphan*/  samplerates; void* addr; } ;
struct sigmadsp {int /*<<< orphan*/  ctrl_list; } ;
struct sigma_fw_chunk_control {int /*<<< orphan*/  addr; int /*<<< orphan*/  name; int /*<<< orphan*/  num_bytes; } ;
struct sigma_fw_chunk {int /*<<< orphan*/  samplerates; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sigmadsp_control*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC7(struct sigmadsp *sigmadsp,
	const struct sigma_fw_chunk *chunk, unsigned int length)
{
	const struct sigma_fw_chunk_control *ctrl_chunk;
	struct sigmadsp_control *ctrl;
	unsigned int num_bytes;
	size_t name_len;
	char *name;
	int ret;

	if (length <= sizeof(*ctrl_chunk))
		return -EINVAL;

	ctrl_chunk = (const struct sigma_fw_chunk_control *)chunk;

	name_len = length - sizeof(*ctrl_chunk);
	if (name_len >= SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
		name_len = SNDRV_CTL_ELEM_ID_NAME_MAXLEN - 1;

	/* Make sure there are no non-displayable characaters in the string */
	if (!FUNC6(ctrl_chunk->name, name_len))
		return -EINVAL;

	num_bytes = FUNC2(ctrl_chunk->num_bytes);
	ctrl = FUNC1(sizeof(*ctrl) + num_bytes, GFP_KERNEL);
	if (!ctrl)
		return -ENOMEM;

	name = FUNC1(name_len + 1, GFP_KERNEL);
	if (!name) {
		ret = -ENOMEM;
		goto err_free_ctrl;
	}
	FUNC5(name, ctrl_chunk->name, name_len);
	name[name_len] = '\0';
	ctrl->name = name;

	ctrl->addr = FUNC2(ctrl_chunk->addr);
	ctrl->num_bytes = num_bytes;
	ctrl->samplerates = FUNC3(chunk->samplerates);

	FUNC4(&ctrl->head, &sigmadsp->ctrl_list);

	return 0;

err_free_ctrl:
	FUNC0(ctrl);

	return ret;
}