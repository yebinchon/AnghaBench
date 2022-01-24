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
typedef  enum kernel_load_data_id { ____Placeholder_kernel_load_data_id } kernel_load_data_id ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_KEXEC_SIG ; 
 int EACCES ; 
 int IMA_APPRAISE_ENFORCE ; 
 int IMA_APPRAISE_FIRMWARE ; 
 int IMA_APPRAISE_KEXEC ; 
 int IMA_APPRAISE_MODULES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  LOADING_FIRMWARE 130 
#define  LOADING_KEXEC_IMAGE 129 
#define  LOADING_MODULE 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int ima_appraise ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(enum kernel_load_data_id id)
{
	bool ima_enforce, sig_enforce;

	ima_enforce =
		(ima_appraise & IMA_APPRAISE_ENFORCE) == IMA_APPRAISE_ENFORCE;

	switch (id) {
	case LOADING_KEXEC_IMAGE:
		if (FUNC0(CONFIG_KEXEC_SIG)
		    && FUNC1()) {
			FUNC3("impossible to appraise a kernel image without a file descriptor; try using kexec_file_load syscall.\n");
			return -EACCES;
		}

		if (ima_enforce && (ima_appraise & IMA_APPRAISE_KEXEC)) {
			FUNC3("impossible to appraise a kernel image without a file descriptor; try using kexec_file_load syscall.\n");
			return -EACCES;	/* INTEGRITY_UNKNOWN */
		}
		break;
	case LOADING_FIRMWARE:
		if (ima_enforce && (ima_appraise & IMA_APPRAISE_FIRMWARE)) {
			FUNC3("Prevent firmware sysfs fallback loading.\n");
			return -EACCES;	/* INTEGRITY_UNKNOWN */
		}
		break;
	case LOADING_MODULE:
		sig_enforce = FUNC2();

		if (ima_enforce && (!sig_enforce
				    && (ima_appraise & IMA_APPRAISE_MODULES))) {
			FUNC3("impossible to appraise a module without a file descriptor. sig_enforce kernel parameter might help\n");
			return -EACCES;	/* INTEGRITY_UNKNOWN */
		}
	default:
		break;
	}
	return 0;
}