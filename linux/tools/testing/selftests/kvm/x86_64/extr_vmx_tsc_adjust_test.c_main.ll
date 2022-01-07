; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_tsc_adjust_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_tsc_adjust_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i64 }
%struct.ucall = type { i8*, i64* }

@VCPU_ID = common dso_local global i32 0, align 4
@l1_guest_code = common dso_local global i64 0, align 8
@vm = common dso_local global i32 0, align 4
@KVM_EXIT_IO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Got exit_reason other than KVM_EXIT_IO: %u (%s)\0A\00", align 1
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

24:                                               ; preds = %67, %2
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
  %46 = load i32, i32* @vm, align 4
  %47 = load i32, i32* @VCPU_ID, align 4
  %48 = call i32 @get_ucall(i32 %46, i32 %47, %struct.ucall* %8)
  switch i32 %48, label %63 [
    i32 130, label %49
    i32 128, label %56
    i32 129, label %62
  ]

49:                                               ; preds = %24
  %50 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 (i32, i8*, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %24, %49
  %57 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @report(i64 %60)
  br label %67

62:                                               ; preds = %24
  br label %68

63:                                               ; preds = %24
  %64 = getelementptr inbounds %struct.ucall, %struct.ucall* %8, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %56
  br label %24

68:                                               ; preds = %62
  ret i32 0
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

declare dso_local i32 @report(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
