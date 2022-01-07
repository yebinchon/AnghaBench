; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_close_while_nested_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_close_while_nested_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ucall = type { i8*, i64* }

@VCPU_ID = common dso_local global i32 0, align 4
@l1_guest_code = common dso_local global i64 0, align 8
@vm = common dso_local global i32 0, align 4
@KVM_EXIT_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Got exit_reason other than KVM_EXIT_IO: %u (%s)\0A\00", align 1
@PORT_L0_EXIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown ucall 0x%x.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.ucall, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @nested_vmx_check_supported()
  %10 = load i32, i32* @VCPU_ID, align 4
  %11 = load i64, i64* @l1_guest_code, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @vm_create_default(i32 %10, i32 0, i8* %12)
  store i32 %13, i32* @vm, align 4
  %14 = load i32, i32* @vm, align 4
  %15 = load i32, i32* @VCPU_ID, align 4
  %16 = call i32 (...) @kvm_get_supported_cpuid()
  %17 = call i32 @vcpu_set_cpuid(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @vm, align 4
  %19 = call i32 @vcpu_alloc_vmx(i32 %18, i32* %6)
  %20 = load i32, i32* @vm, align 4
  %21 = load i32, i32* @VCPU_ID, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @vcpu_args_set(i32 %20, i32 %21, i32 1, i32 %22)
  br label %24

24:                                               ; preds = %68, %2
  %25 = load i32, i32* @vm, align 4
  %26 = load i32, i32* @VCPU_ID, align 4
  %27 = call %struct.kvm_run* @vcpu_state(i32 %25, i32 %26)
  store %struct.kvm_run* %27, %struct.kvm_run** %7, align 8
  %28 = load i32, i32* @vm, align 4
  %29 = load i32, i32* @VCPU_ID, align 4
  %30 = call i32 @vcpu_run(i32 %28, i32 %29)
  %31 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %31, i32 0, i32 0
  %33 = load volatile i64, i64* %32, align 8
  %34 = load i64, i64* @KVM_EXIT_IO, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %38 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %37, i32 0, i32 0
  %39 = load volatile i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %42 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %41, i32 0, i32 0
  %43 = load volatile i64, i64* %42, align 8
  %44 = call i32 @exit_reason_str(i64 %43)
  %45 = call i32 (i32, i8*, i8*, ...) @TEST_ASSERT(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %44)
  %46 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load volatile i64, i64* %48, align 8
  %50 = load i64, i64* @PORT_L0_EXIT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %24
  br label %69

53:                                               ; preds = %24
  %54 = load i32, i32* @vm, align 4
  %55 = load i32, i32* @VCPU_ID, align 4
  %56 = call i32 @get_ucall(i32 %54, i32 %55, %struct.ucall* %8)
  switch i32 %56, label %64 [
    i32 128, label %57
  ]

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 (i32, i8*, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %53, %57
  %65 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i32, i8*, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64
  br label %24

69:                                               ; preds = %52
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @nested_vmx_check_supported(...) #1

declare dso_local i32 @vm_create_default(i32, i32, i8*) #1

declare dso_local i32 @vcpu_set_cpuid(i32, i32, i32) #1

declare dso_local i32 @kvm_get_supported_cpuid(...) #1

declare dso_local i32 @vcpu_alloc_vmx(i32, i32*) #1

declare dso_local i32 @vcpu_args_set(i32, i32, i32, i32) #1

declare dso_local %struct.kvm_run* @vcpu_state(i32, i32) #1

declare dso_local i32 @vcpu_run(i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i8*, ...) #1

declare dso_local i32 @exit_reason_str(i64) #1

declare dso_local i32 @get_ucall(i32, i32, %struct.ucall*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
