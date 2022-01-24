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
typedef  int u32 ;
typedef  size_t u16 ;
struct hpi_message {int dummy; } ;
struct hpi_hw_obj {int /*<<< orphan*/ * control_cache; struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int control_cache_address_on_dsp; int control_cache_length_on_dsp; } ;

/* Variables and functions */
 int /*<<< orphan*/  H6READ ; 
 int /*<<< orphan*/  H6WRITE ; 
 size_t HPI6000_ERROR_CONTROL_CACHE_ADDRLEN ; 
 size_t HPI6000_ERROR_CONTROL_CACHE_FLUSH ; 
 size_t HPI6000_ERROR_CONTROL_CACHE_PARAMS ; 
 size_t HPI6000_ERROR_CONTROL_CACHE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TIMEOUT ; 
 int /*<<< orphan*/  control_cache_address ; 
 int /*<<< orphan*/  control_cache_is_dirty ; 
 int /*<<< orphan*/  control_cache_size_in_bytes ; 
 int /*<<< orphan*/  host_cmd ; 
 scalar_t__ FUNC1 (struct hpi_adapter_obj*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hpi_adapter_obj*,size_t const,int,int*,int) ; 
 int FUNC3 (struct dsp_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dsp_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dsp_obj*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hpi_adapter_obj*) ; 
 int /*<<< orphan*/  FUNC7 (struct hpi_adapter_obj*) ; 

__attribute__((used)) static short FUNC8(struct hpi_adapter_obj *pao,
	struct hpi_message *phm)
{
	const u16 dsp_index = 0;
	struct hpi_hw_obj *phw = pao->priv;
	struct dsp_obj *pdo = &phw->ado[dsp_index];
	u32 timeout;
	u32 cache_dirty_flag;
	u16 err;

	FUNC6(pao);

	timeout = TIMEOUT;
	do {
		cache_dirty_flag =
			FUNC3((struct dsp_obj *)pdo,
			FUNC0(control_cache_is_dirty));
	} while (FUNC1(pao, H6READ) && --timeout);
	if (!timeout) {
		err = HPI6000_ERROR_CONTROL_CACHE_PARAMS;
		goto unlock;
	}

	if (cache_dirty_flag) {
		/* read the cached controls */
		u32 address;
		u32 length;

		timeout = TIMEOUT;
		if (pdo->control_cache_address_on_dsp == 0) {
			do {
				address =
					FUNC3((struct dsp_obj *)pdo,
					FUNC0(control_cache_address));

				length = FUNC3((struct dsp_obj *)pdo,
					FUNC0
					(control_cache_size_in_bytes));
			} while (FUNC1(pao, H6READ)
				&& --timeout);
			if (!timeout) {
				err = HPI6000_ERROR_CONTROL_CACHE_ADDRLEN;
				goto unlock;
			}
			pdo->control_cache_address_on_dsp = address;
			pdo->control_cache_length_on_dsp = length;
		} else {
			address = pdo->control_cache_address_on_dsp;
			length = pdo->control_cache_length_on_dsp;
		}

		if (FUNC2(pao, dsp_index, address,
				(u32 *)&phw->control_cache[0],
				length / sizeof(u32))) {
			err = HPI6000_ERROR_CONTROL_CACHE_READ;
			goto unlock;
		}
		do {
			FUNC5((struct dsp_obj *)pdo,
				FUNC0(control_cache_is_dirty), 0);
			/* flush the FIFO */
			FUNC4(pdo, FUNC0(host_cmd));
		} while (FUNC1(pao, H6WRITE)
			&& --timeout);
		if (!timeout) {
			err = HPI6000_ERROR_CONTROL_CACHE_FLUSH;
			goto unlock;
		}

	}
	err = 0;

unlock:
	FUNC7(pao);
	return err;
}