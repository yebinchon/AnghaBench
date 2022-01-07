; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_test_nested_state_expect_einval.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_test_nested_state_expect_einval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_nested_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_nested_state_expect_einval(%struct.kvm_vm* %0, %struct.kvm_nested_state* %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca %struct.kvm_nested_state*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store %struct.kvm_nested_state* %1, %struct.kvm_nested_state** %4, align 8
  %5 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %6 = load %struct.kvm_nested_state*, %struct.kvm_nested_state** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = call i32 @test_nested_state_expect_errno(%struct.kvm_vm* %5, %struct.kvm_nested_state* %6, i32 %7)
  ret void
}

declare dso_local i32 @test_nested_state_expect_errno(%struct.kvm_vm*, %struct.kvm_nested_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
