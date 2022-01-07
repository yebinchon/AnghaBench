; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_cr4_cpuid_sync_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_cr4_cpuid_sync_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vm = type { i32 }
%struct.kvm_sregs = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32 }
%struct.ucall = type { i32 }

@X86_FEATURE_XSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"XSAVE feature not supported, skipping test\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@VCPU_ID = common dso_local global i32 0, align 4
@guest_code = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"vcpu_run failed: %d\0A\00", align 1
@KVM_EXIT_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected exit reason: %u (%s),\0A\00", align 1
@X86_CR4_OSXSAVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Guest CR4 bit (OSXSAVE) unsynchronized with CPUID bit.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Unknown ucall 0x%x.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.kvm_run*, align 8
  %7 = alloca %struct.kvm_vm*, align 8
  %8 = alloca %struct.kvm_sregs, align 4
  %9 = alloca %struct.kvm_cpuid_entry2*, align 8
  %10 = alloca %struct.ucall, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call %struct.kvm_cpuid_entry2* @kvm_get_supported_cpuid_entry(i32 1)
  store %struct.kvm_cpuid_entry2* %12, %struct.kvm_cpuid_entry2** %9, align 8
  %13 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %9, align 8
  %14 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @X86_FEATURE_XSAVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @setbuf(i32 %22, i32* null)
  %24 = load i32, i32* @VCPU_ID, align 4
  %25 = load i32, i32* @guest_code, align 4
  %26 = call %struct.kvm_vm* @vm_create_default(i32 %24, i32 0, i32 %25)
  store %struct.kvm_vm* %26, %struct.kvm_vm** %7, align 8
  %27 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %28 = load i32, i32* @VCPU_ID, align 4
  %29 = call i32 (...) @kvm_get_supported_cpuid()
  %30 = call i32 @vcpu_set_cpuid(%struct.kvm_vm* %27, i32 %28, i32 %29)
  %31 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %32 = load i32, i32* @VCPU_ID, align 4
  %33 = call %struct.kvm_run* @vcpu_state(%struct.kvm_vm* %31, i32 %32)
  store %struct.kvm_run* %33, %struct.kvm_run** %6, align 8
  br label %34

34:                                               ; preds = %21, %79
  %35 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %36 = load i32, i32* @VCPU_ID, align 4
  %37 = call i32 @_vcpu_run(%struct.kvm_vm* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %44 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @KVM_EXIT_IO, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %53 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @exit_reason_str(i32 %54)
  %56 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %55)
  %57 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %58 = load i32, i32* @VCPU_ID, align 4
  %59 = call i32 @get_ucall(%struct.kvm_vm* %57, i32 %58, %struct.ucall* %10)
  switch i32 %59, label %75 [
    i32 128, label %60
    i32 130, label %72
    i32 129, label %74
  ]

60:                                               ; preds = %34
  %61 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %62 = load i32, i32* @VCPU_ID, align 4
  %63 = call i32 @vcpu_sregs_get(%struct.kvm_vm* %61, i32 %62, %struct.kvm_sregs* %8)
  %64 = load i32, i32* @X86_CR4_OSXSAVE, align 4
  %65 = xor i32 %64, -1
  %66 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load %struct.kvm_vm*, %struct.kvm_vm** %7, align 8
  %70 = load i32, i32* @VCPU_ID, align 4
  %71 = call i32 @vcpu_sregs_set(%struct.kvm_vm* %69, i32 %70, %struct.kvm_sregs* %8)
  br label %79

72:                                               ; preds = %34
  %73 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %79

74:                                               ; preds = %34
  br label %80

75:                                               ; preds = %34
  %76 = getelementptr inbounds %struct.ucall, %struct.ucall* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @TEST_ASSERT(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %72, %60
  br label %34

80:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.kvm_cpuid_entry2* @kvm_get_supported_cpuid_entry(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @setbuf(i32, i32*) #1

declare dso_local %struct.kvm_vm* @vm_create_default(i32, i32, i32) #1

declare dso_local i32 @vcpu_set_cpuid(%struct.kvm_vm*, i32, i32) #1

declare dso_local i32 @kvm_get_supported_cpuid(...) #1

declare dso_local %struct.kvm_run* @vcpu_state(%struct.kvm_vm*, i32) #1

declare dso_local i32 @_vcpu_run(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, ...) #1

declare dso_local i32 @exit_reason_str(i32) #1

declare dso_local i32 @get_ucall(%struct.kvm_vm*, i32, %struct.ucall*) #1

declare dso_local i32 @vcpu_sregs_get(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

declare dso_local i32 @vcpu_sregs_set(%struct.kvm_vm*, i32, %struct.kvm_sregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
