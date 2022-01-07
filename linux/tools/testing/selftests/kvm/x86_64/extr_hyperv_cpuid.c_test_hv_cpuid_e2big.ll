; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_test_hv_cpuid_e2big.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_hyperv_cpuid.c_test_hv_cpuid_e2big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid2 = type { i32 }
%struct.kvm_vm = type { i32 }

@test_hv_cpuid_e2big.cpuid = internal global %struct.kvm_cpuid2 zeroinitializer, align 4
@VCPU_ID = common dso_local global i32 0, align 4
@KVM_GET_SUPPORTED_HV_CPUID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"KVM_GET_SUPPORTED_HV_CPUID didn't fail with -E2BIG when it should have: %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_hv_cpuid_e2big(%struct.kvm_vm* %0) #0 {
  %2 = alloca %struct.kvm_vm*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %2, align 8
  %4 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %5 = load i32, i32* @VCPU_ID, align 4
  %6 = load i32, i32* @KVM_GET_SUPPORTED_HV_CPUID, align 4
  %7 = call i32 @_vcpu_ioctl(%struct.kvm_vm* %4, i32 %5, i32 %6, %struct.kvm_cpuid2* @test_hv_cpuid_e2big.cpuid)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @E2BIG, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* @errno, align 8
  %19 = call i32 @TEST_ASSERT(i32 %16, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  ret void
}

declare dso_local i32 @_vcpu_ioctl(%struct.kvm_vm*, i32, i32, %struct.kvm_cpuid2*) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
