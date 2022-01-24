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
struct sigmadsp_data {unsigned int length; int /*<<< orphan*/  head; int /*<<< orphan*/  data; int /*<<< orphan*/  samplerates; int /*<<< orphan*/  addr; } ;
struct sigmadsp {int /*<<< orphan*/  data_list; } ;
struct sigma_fw_chunk_data {int /*<<< orphan*/  data; int /*<<< orphan*/  addr; } ;
struct sigma_fw_chunk {int /*<<< orphan*/  samplerates; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sigmadsp_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sigmadsp *sigmadsp,
	const struct sigma_fw_chunk *chunk, unsigned int length)
{
	const struct sigma_fw_chunk_data *data_chunk;
	struct sigmadsp_data *data;

	if (length <= sizeof(*data_chunk))
		return -EINVAL;

	data_chunk = (struct sigma_fw_chunk_data *)chunk;

	length -= sizeof(*data_chunk);

	data = FUNC0(sizeof(*data) + length, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->addr = FUNC1(data_chunk->addr);
	data->length = length;
	data->samplerates = FUNC2(chunk->samplerates);
	FUNC4(data->data, data_chunk->data, length);
	FUNC3(&data->head, &sigmadsp->data_list);

	return 0;
}