; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_nested_state = type { i32, i64 }

@KVM_CAP_HYPERV_ENLIGHTENED_VMCS = common dso_local global i32 0, align 4
@have_evmcs = common dso_local global i32 0, align 4
@KVM_CAP_NESTED_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"KVM_CAP_NESTED_STATE not available, skipping test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@VCPU_ID = common dso_local global i32 0, align 4
@KVM_STATE_NESTED_RUN_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.kvm_vm*, align 8
  %7 = alloca %struct.kvm_nested_state, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @KVM_CAP_HYPERV_ENLIGHTENED_VMCS, align 4
  %9 = call i32 @kvm_check_cap(i32 %8)
  store i32 %9, i32* @have_evmcs, align 4
  %10 = load i32, i32* @KVM_CAP_NESTED_STATE, align 4
  %11 = call i32 @kvm_check_cap(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @KSFT_SKIP, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %2
  %18 = call i32 (...) @nested_vmx_check_supported()
  %19 = load i32, i32* @VCPU_ID, align 4
  %20 = call %struct.kvm_vm* @vm_create_default(i32 %19, i32 0, i32 0)
  store %struct.kvm_vm* %20, %struct.kvm_vm** %6, align 8
  %21 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %22 = call i32 @test_nested_state_expect_efault(%struct.kvm_vm* %21, i32* null)
  %23 = call i32 @set_default_state(%struct.kvm_nested_state* %7)
  %24 = getelementptr inbounds %struct.kvm_nested_state, %struct.kvm_nested_state* %7, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %26 = call i32 @test_nested_state_expect_einval(%struct.kvm_vm* %25, %struct.kvm_nested_state* %7)
  %27 = call i32 @set_default_state(%struct.kvm_nested_state* %7)
  %28 = getelementptr inbounds %struct.kvm_nested_state, %struct.kvm_nested_state* %7, i32 0, i32 0
  store i32 15, i32* %28, align 8
  %29 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %30 = call i32 @test_nested_state_expect_einval(%struct.kvm_vm* %29, %struct.kvm_nested_state* %7)
  %31 = call i32 @set_default_state(%struct.kvm_nested_state* %7)
  %32 = load i32, i32* @KVM_STATE_NESTED_RUN_PENDING, align 4
  %33 = getelementptr inbounds %struct.kvm_nested_state, %struct.kvm_nested_state* %7, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %35 = call i32 @test_nested_state_expect_einval(%struct.kvm_vm* %34, %struct.kvm_nested_state* %7)
  %36 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %37 = call i32 @test_vmx_nested_state(%struct.kvm_vm* %36)
  %38 = load %struct.kvm_vm*, %struct.kvm_vm** %6, align 8
  %39 = call i32 @kvm_vm_free(%struct.kvm_vm* %38)
  ret i32 0
}

declare dso_local i32 @kvm_check_cap(i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @nested_vmx_check_supported(...) #1

declare dso_local %struct.kvm_vm* @vm_create_default(i32, i32, i32) #1

declare dso_local i32 @test_nested_state_expect_efault(%struct.kvm_vm*, i32*) #1

declare dso_local i32 @set_default_state(%struct.kvm_nested_state*) #1

declare dso_local i32 @test_nested_state_expect_einval(%struct.kvm_vm*, %struct.kvm_nested_state*) #1

declare dso_local i32 @test_vmx_nested_state(%struct.kvm_vm*) #1

declare dso_local i32 @kvm_vm_free(%struct.kvm_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
