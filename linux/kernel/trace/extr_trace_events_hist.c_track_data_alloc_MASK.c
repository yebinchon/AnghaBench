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
struct TYPE_2__ {struct hist_elt_data* private_data; } ;
struct track_data {unsigned int key_len; TYPE_1__ elt; struct hist_trigger_data* hist_data; struct action_data* action_data; void* key; } ;
struct hist_trigger_data {int dummy; } ;
struct hist_elt_data {void* comm; } ;
struct action_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct track_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TASK_COMM_LEN ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct track_data*) ; 

__attribute__((used)) static struct track_data *FUNC3(unsigned int key_len,
					   struct action_data *action_data,
					   struct hist_trigger_data *hist_data)
{
	struct track_data *data = FUNC1(sizeof(*data), GFP_KERNEL);
	struct hist_elt_data *elt_data;

	if (!data)
		return FUNC0(-ENOMEM);

	data->key = FUNC1(key_len, GFP_KERNEL);
	if (!data->key) {
		FUNC2(data);
		return FUNC0(-ENOMEM);
	}

	data->key_len = key_len;
	data->action_data = action_data;
	data->hist_data = hist_data;

	elt_data = FUNC1(sizeof(*elt_data), GFP_KERNEL);
	if (!elt_data) {
		FUNC2(data);
		return FUNC0(-ENOMEM);
	}
	data->elt.private_data = elt_data;

	elt_data->comm = FUNC1(TASK_COMM_LEN, GFP_KERNEL);
	if (!elt_data->comm) {
		FUNC2(data);
		return FUNC0(-ENOMEM);
	}

	return data;
}