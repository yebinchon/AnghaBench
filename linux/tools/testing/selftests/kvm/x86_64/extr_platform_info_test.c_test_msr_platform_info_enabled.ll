; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_platform_info_test.c_test_msr_platform_info_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_platform_info_test.c_test_msr_platform_info_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_run = type { i64 }
%struct.ucall = type { i64, i32* }

@VCPU_ID = common dso_local global i32 0, align 4
@KVM_EXIT_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Exit_reason other than KVM_EXIT_IO: %u (%s),\0A\00", align 1
@UCALL_SYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Received ucall other than UCALL_SYNC: %u\0A\00", align 1
@ucall = common dso_local global i32 0, align 4
@MSR_PLATFORM_INFO_MAX_TURBO_RATIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Expected MSR_PLATFORM_INFO to have max turbo ratio mask: %i.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vm*)* @test_msr_platform_info_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_msr_platform_info_enabled(%struct.kvm_vm* %0) #0 {
  %2 = alloca %struct.kvm_vm*, align 8
  %3 = alloca %struct.kvm_run*, align 8
  %4 = alloca %struct.ucall, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %2, align 8
  %5 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %6 = load i32, i32* @VCPU_ID, align 4
  %7 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %5, i32 %6)
  store %struct.kvm_run* %7, %struct.kvm_run** %3, align 8
  %8 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %9 = call i32 @set_msr_platform_info_enabled(%struct.kvm_vm* %8, i32 1)
  %10 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %11 = load i32, i32* @VCPU_ID, align 4
  %12 = call i32 @vcpu_run(%struct.kvm_vm* %10, i32 %11)
  %13 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KVM_EXIT_IO, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @exit_reason_str(i64 %25)
  %27 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.kvm_vm*, %struct.kvm_vm** %2, align 8
  %29 = load i32, i32* @VCPU_ID, align 4
  %30 = call i32 @get_ucall(%struct.kvm_vm* %28, i32 %29, %struct.ucall* %4)
  %31 = getelementptr inbounds %struct.ucall, %struct.ucall* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UCALL_SYNC, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @ucall, align 4
  %37 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds %struct.ucall, %struct.ucall* %4, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MSR_PLATFORM_INFO_MAX_TURBO_RATIO, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @MSR_PLATFORM_INFO_MAX_TURBO_RATIO, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @MSR_PLATFORM_INFO_MAX_TURBO_RATIO, align 4
  %48 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %46, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm*, i32) #1

declare dso_local i32 @set_msr_platform_info_enabled(%struct.kvm_vm*, i32) #1

declare dso_local i32 @vcpu_run(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, ...) #1

declare dso_local i32 @exit_reason_str(i64) #1

declare dso_local i32 @get_ucall(%struct.kvm_vm*, i32, %struct.ucall*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
