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
struct thread_context {int kvmcpu; struct kvm_run* run; } ;
struct kvm_run {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_CREATE_VCPU ; 
 int /*<<< orphan*/  KVM_CREATE_VM ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int NTHREAD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thr ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(void)
{
	int i, kvm, kvmvm, kvmcpu;
	pthread_t th[NTHREAD];
	struct kvm_run *run;
	struct thread_context tc;

	kvm = FUNC4("/dev/kvm", O_RDWR);
	FUNC0(kvm != -1, "failed to open /dev/kvm");
	kvmvm = FUNC2(kvm, KVM_CREATE_VM, 0);
	FUNC0(kvmvm != -1, "KVM_CREATE_VM failed");
	kvmcpu = FUNC2(kvmvm, KVM_CREATE_VCPU, 0);
	FUNC0(kvmcpu != -1, "KVM_CREATE_VCPU failed");
	run = (struct kvm_run *)FUNC3(0, 4096, PROT_READ|PROT_WRITE, MAP_SHARED,
				    kvmcpu, 0);
	tc.kvmcpu = kvmcpu;
	tc.run = run;
	FUNC8(FUNC1());
	for (i = 0; i < NTHREAD; i++) {
		FUNC5(&th[i], NULL, thr, (void *)(uintptr_t)&tc);
		FUNC9(FUNC7() % 10000);
	}
	for (i = 0; i < NTHREAD; i++)
		FUNC6(th[i], NULL);
}