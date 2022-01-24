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
struct hpi_response {scalar_t__ error; } ;
struct hpi_message {size_t adapter_index; size_t obj_index; } ;
struct TYPE_2__ {void* h_owner; scalar_t__ open_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,size_t,size_t,void*) ; 
 scalar_t__ HPI_ERROR_OBJ_NOT_OPEN ; 
 int /*<<< orphan*/  HPI_OBJ_OSTREAM ; 
 int /*<<< orphan*/  HPI_OSTREAM_CLOSE ; 
 int /*<<< orphan*/  HPI_OSTREAM_RESET ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct hpi_message*,struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hpi_response*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hpi_message*,struct hpi_response*) ; 
 int /*<<< orphan*/  msgx_lock ; 
 TYPE_1__** outstream_user_open ; 

__attribute__((used)) static void FUNC6(struct hpi_message *phm, struct hpi_response *phr,
	void *h_owner)
{

	struct hpi_message hm;
	struct hpi_response hr;

	FUNC2(phr, HPI_OBJ_OSTREAM, HPI_OSTREAM_CLOSE, 0);

	FUNC3(&msgx_lock);

	if (h_owner ==
		outstream_user_open[phm->adapter_index][phm->
			obj_index].h_owner) {
		/* HPI_DEBUG_LOG(INFO,"closing adapter %d "
		   "outstream %d owned by %p\n",
		   phm->wAdapterIndex, phm->wObjIndex, hOwner); */
		outstream_user_open[phm->adapter_index][phm->
			obj_index].h_owner = NULL;
		FUNC4(&msgx_lock);
		/* issue a reset */
		FUNC1(&hm, &hr, HPI_OBJ_OSTREAM,
			HPI_OSTREAM_RESET);
		hm.adapter_index = phm->adapter_index;
		hm.obj_index = phm->obj_index;
		FUNC5(&hm, &hr);
		FUNC3(&msgx_lock);
		if (hr.error) {
			outstream_user_open[phm->adapter_index][phm->
				obj_index].h_owner = h_owner;
			phr->error = hr.error;
		} else {
			outstream_user_open[phm->adapter_index][phm->
				obj_index].open_flag = 0;
			outstream_user_open[phm->adapter_index][phm->
				obj_index].h_owner = NULL;
		}
	} else {
		FUNC0(WARNING,
			"%p trying to close %d outstream %d owned by %p\n",
			h_owner, phm->adapter_index, phm->obj_index,
			outstream_user_open[phm->adapter_index][phm->
				obj_index].h_owner);
		phr->error = HPI_ERROR_OBJ_NOT_OPEN;
	}
	FUNC4(&msgx_lock);
}