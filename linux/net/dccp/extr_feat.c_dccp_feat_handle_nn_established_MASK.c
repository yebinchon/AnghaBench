#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_6__ {scalar_t__ nn; } ;
struct dccp_feat_entry {scalar_t__ state; TYPE_1__ val; } ;
struct TYPE_7__ {scalar_t__ nn; } ;
typedef  TYPE_2__ dccp_feat_val ;
struct TYPE_8__ {struct list_head dccps_featneg; } ;

/* Variables and functions */
 scalar_t__ DCCPO_CHANGE_L ; 
 scalar_t__ DCCPO_CONFIRM_R ; 
 scalar_t__ DCCP_RESET_CODE_MANDATORY_ERROR ; 
 scalar_t__ DCCP_RESET_CODE_OPTION_ERROR ; 
 scalar_t__ DCCP_RESET_CODE_TOO_BUSY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FEAT_CHANGING ; 
 scalar_t__ FEAT_NN ; 
 scalar_t__ FEAT_UNKNOWN ; 
 void* FUNC1 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct sock*,scalar_t__,int const,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 struct dccp_feat_entry* FUNC4 (struct list_head*,scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct dccp_feat_entry*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct list_head*,scalar_t__,int const,TYPE_2__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct list_head*,scalar_t__,int const) ; 
 TYPE_3__* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static u8 FUNC12(struct sock *sk, u8 mandatory, u8 opt,
					  u8 feat, u8 *val, u8 len)
{
	struct list_head *fn = &FUNC10(sk)->dccps_featneg;
	const bool local = (opt == DCCPO_CONFIRM_R);
	struct dccp_feat_entry *entry;
	u8 type = FUNC8(feat);
	dccp_feat_val fval;

	FUNC6(opt, feat, val, len, mandatory);

	/* Ignore non-mandatory unknown and non-NN features */
	if (type == FEAT_UNKNOWN) {
		if (local && !mandatory)
			return 0;
		goto fast_path_unknown;
	} else if (type != FEAT_NN) {
		return 0;
	}

	/*
	 * We don't accept empty Confirms, since in fast-path feature
	 * negotiation the values are enabled immediately after sending
	 * the Change option.
	 * Empty Changes on the other hand are invalid (RFC 4340, 6.1).
	 */
	if (len == 0 || len > sizeof(fval.nn))
		goto fast_path_unknown;

	if (opt == DCCPO_CHANGE_L) {
		fval.nn = FUNC1(val, len);
		if (!FUNC3(feat, fval.nn))
			goto fast_path_unknown;

		if (FUNC7(fn, feat, local, &fval) ||
		    FUNC2(sk, feat, local, &fval))
			return DCCP_RESET_CODE_TOO_BUSY;

		/* set the `Ack Pending' flag to piggyback a Confirm */
		FUNC11(sk);

	} else if (opt == DCCPO_CONFIRM_R) {
		entry = FUNC4(fn, feat, local);
		if (entry == NULL || entry->state != FEAT_CHANGING)
			return 0;

		fval.nn = FUNC1(val, len);
		/*
		 * Just ignore a value that doesn't match our current value.
		 * If the option changes twice within two RTTs, then at least
		 * one CONFIRM will be received for the old value after a
		 * new CHANGE was sent.
		 */
		if (fval.nn != entry->val.nn)
			return 0;

		/* Only activate after receiving the Confirm option (6.6.1). */
		FUNC2(sk, feat, local, &fval);

		/* It has been confirmed - so remove the entry */
		FUNC5(entry);

	} else {
		FUNC0("Received illegal option %u\n", opt);
		goto fast_path_failed;
	}
	return 0;

fast_path_unknown:
	if (!mandatory)
		return FUNC9(fn, feat, local);

fast_path_failed:
	return mandatory ? DCCP_RESET_CODE_MANDATORY_ERROR
			 : DCCP_RESET_CODE_OPTION_ERROR;
}