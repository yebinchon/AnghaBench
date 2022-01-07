; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vcpu_nested_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vcpu_nested_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.kvm_nested_state = type { i32 }
%struct.vcpu = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"vcpu not found, vcpuid: %u\00", align 1
@KVM_SET_NESTED_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"KVM_SET_NESTED_STATE failed, ret: %i errno: %i\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vcpu_nested_state_set(%struct.kvm_vm* %0, i32 %1, %struct.kvm_nested_state* %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_nested_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vcpu*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kvm_nested_state* %2, %struct.kvm_nested_state** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.vcpu* @vcpu_find(%struct.kvm_vm* %11, i32 %12)
  store %struct.vcpu* %13, %struct.vcpu** %9, align 8
  %14 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %15 = icmp ne %struct.vcpu* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %20 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @KVM_SET_NESTED_STATE, align 4
  %23 = load %struct.kvm_nested_state*, %struct.kvm_nested_state** %7, align 8
  %24 = call i32 @ioctl(i32 %21, i32 %22, %struct.kvm_nested_state* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i32, i8*, i32, ...) @TEST_ASSERT(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %4
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

declare dso_local %struct.vcpu* @vcpu_find(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32, ...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.kvm_nested_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
