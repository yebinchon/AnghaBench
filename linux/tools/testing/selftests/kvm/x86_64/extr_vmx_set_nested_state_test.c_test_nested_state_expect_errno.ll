; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_test_nested_state_expect_errno.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_vmx_set_nested_state_test.c_test_nested_state_expect_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_nested_state = type { i32 }

@VCPU_ID = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Expected %s (%d) from vcpu_nested_state_set but got rv: %i errno: %s (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_nested_state_expect_errno(%struct.kvm_vm* %0, %struct.kvm_nested_state* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca %struct.kvm_nested_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store %struct.kvm_nested_state* %1, %struct.kvm_nested_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %9 = load i32, i32* @VCPU_ID, align 4
  %10 = load %struct.kvm_nested_state*, %struct.kvm_nested_state** %5, align 8
  %11 = call i32 @vcpu_nested_state_set(%struct.kvm_vm* %8, i32 %9, %struct.kvm_nested_state* %10, i32 1)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @errno, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ false, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @TEST_ASSERT(i32 %20, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @vcpu_nested_state_set(%struct.kvm_vm*, i32, %struct.kvm_nested_state*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
