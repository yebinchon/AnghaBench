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
struct cfctrl_rsp {int /*<<< orphan*/  reject_rsp; int /*<<< orphan*/  linksetup_rsp; void* radioset_rsp; void* restart_rsp; void* wake_rsp; void* sleep_rsp; int /*<<< orphan*/  linkdestroy_rsp; void* linkerror_ind; int /*<<< orphan*/  enum_rsp; } ;
struct cfcnfg {struct cfcnfg* ctrl; struct cfcnfg* mux; int /*<<< orphan*/  lock; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cfcnfg_linkdestroy_rsp ; 
 int /*<<< orphan*/  cfcnfg_linkup_rsp ; 
 int /*<<< orphan*/  cfcnfg_reject_rsp ; 
 struct cfcnfg* FUNC1 () ; 
 int /*<<< orphan*/  cfctrl_enum_resp ; 
 struct cfctrl_rsp* FUNC2 (struct cfcnfg*) ; 
 void* cfctrl_resp_func ; 
 struct cfcnfg* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cfcnfg*,struct cfcnfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfcnfg*) ; 
 struct cfcnfg* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfcnfg*,struct cfcnfg*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfcnfg*,struct cfcnfg*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

struct cfcnfg *FUNC12(void)
{
	struct cfcnfg *this;
	struct cfctrl_rsp *resp;

	FUNC9();

	/* Initiate this layer */
	this = FUNC6(sizeof(struct cfcnfg), GFP_ATOMIC);
	if (!this)
		return NULL;
	this->mux = FUNC3();
	if (!this->mux)
		goto out_of_mem;
	this->ctrl = FUNC1();
	if (!this->ctrl)
		goto out_of_mem;
	/* Initiate response functions */
	resp = FUNC2(this->ctrl);
	resp->enum_rsp = cfctrl_enum_resp;
	resp->linkerror_ind = cfctrl_resp_func;
	resp->linkdestroy_rsp = cfcnfg_linkdestroy_rsp;
	resp->sleep_rsp = cfctrl_resp_func;
	resp->wake_rsp = cfctrl_resp_func;
	resp->restart_rsp = cfctrl_resp_func;
	resp->radioset_rsp = cfctrl_resp_func;
	resp->linksetup_rsp = cfcnfg_linkup_rsp;
	resp->reject_rsp = cfcnfg_reject_rsp;
	FUNC0(&this->phys);

	FUNC4(this->mux, this->ctrl, 0);
	FUNC7(this->ctrl, this->mux);
	FUNC8(this->ctrl, this);
	FUNC10(&this->lock);

	return this;
out_of_mem:
	FUNC11();

	FUNC5(this->mux);
	FUNC5(this->ctrl);
	FUNC5(this);
	return NULL;
}