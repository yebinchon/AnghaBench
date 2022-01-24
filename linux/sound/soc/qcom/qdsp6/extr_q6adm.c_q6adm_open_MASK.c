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
typedef  int /*<<< orphan*/  uint16_t ;
struct q6copp {int copp_idx; int topology; int mode; int rate; int channels; int app_type; int /*<<< orphan*/  refcount; int /*<<< orphan*/  bit_width; int /*<<< orphan*/  node; } ;
struct q6adm {int /*<<< orphan*/  copps_list_lock; int /*<<< orphan*/  copps_list; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 struct q6copp* FUNC0 (struct q6copp*) ; 
 struct q6copp* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct q6copp*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct q6adm* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct q6copp* FUNC8 (struct q6adm*,int) ; 
 int FUNC9 (struct q6adm*,struct q6copp*,int,int,int,int,int /*<<< orphan*/ ,int) ; 
 struct q6copp* FUNC10 (struct q6adm*,int,int,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  q6adm_free_copp ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

struct q6copp *FUNC13(struct device *dev, int port_id, int path, int rate,
	       int channel_mode, int topology, int perf_mode,
	       uint16_t bit_width, int app_type, int acdb_id)
{
	struct q6adm *adm = FUNC4(dev->parent);
	struct q6copp *copp;
	unsigned long flags;
	int ret = 0;

	if (port_id < 0) {
		FUNC3(dev, "Invalid port_id 0x%x\n", port_id);
		return FUNC1(-EINVAL);
	}

	copp = FUNC10(adm, port_id, topology, perf_mode,
				      rate, channel_mode, bit_width, app_type);
	if (copp) {
		FUNC3(dev, "Found Matching Copp 0x%x\n", copp->copp_idx);
		return copp;
	}

	FUNC11(&adm->copps_list_lock, flags);
	copp = FUNC8(adm, port_id);
	if (FUNC2(copp)) {
		FUNC12(&adm->copps_list_lock, flags);
		return FUNC0(copp);
	}

	FUNC7(&copp->node, &adm->copps_list);
	FUNC12(&adm->copps_list_lock, flags);

	FUNC5(&copp->refcount);
	copp->topology = topology;
	copp->mode = perf_mode;
	copp->rate = rate;
	copp->channels = channel_mode;
	copp->bit_width = bit_width;
	copp->app_type = app_type;


	ret = FUNC9(adm, copp, port_id, path, topology,
				channel_mode, bit_width, rate);
	if (ret < 0) {
		FUNC6(&copp->refcount, q6adm_free_copp);
		return FUNC1(ret);
	}

	return copp;
}