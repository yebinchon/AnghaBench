; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_set_default_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_set_default_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_state = type { i32, i32, i64 }

@KVM_STATE_NESTED_RUN_PENDING = common dso_local global i32 0, align 4
@KVM_STATE_NESTED_GUEST_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_default_state(%struct.kvm_nested_state* %0) #0 {
  %2 = alloca %struct.kvm_nested_state*, align 8
  store %struct.kvm_nested_state* %0, %struct.kvm_nested_state** %2, align 8
  %3 = load %struct.kvm_nested_state*, %struct.kvm_nested_state** %2, align 8
  %4 = call i32 @memset(%struct.kvm_nested_state* %3, i32 0, i32 16)
  %5 = load i32, i32* @KVM_STATE_NESTED_RUN_PENDING, align 4
  %6 = load i32, i32* @KVM_STATE_NESTED_GUEST_MODE, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.kvm_nested_state*, %struct.kvm_nested_state** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_nested_state, %struct.kvm_nested_state* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.kvm_nested_state*, %struct.kvm_nested_state** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_nested_state, %struct.kvm_nested_state* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.kvm_nested_state*, %struct.kvm_nested_state** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_nested_state, %struct.kvm_nested_state* %12, i32 0, i32 1
  store i32 16, i32* %13, align 4
  ret void
}

declare dso_local i32 @memset(%struct.kvm_nested_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
