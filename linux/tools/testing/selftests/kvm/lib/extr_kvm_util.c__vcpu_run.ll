; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c__vcpu_run.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c__vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vm = type { i32 }
%struct.vcpu = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"vcpu not found, vcpuid: %u\00", align 1
@KVM_RUN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_vcpu_run(%struct.kvm_vm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vm* %0, %struct.kvm_vm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.vcpu* @vcpu_find(%struct.kvm_vm* %7, i32 %8)
  store %struct.vcpu* %9, %struct.vcpu** %5, align 8
  %10 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %11 = icmp ne %struct.vcpu* %10, null
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TEST_ASSERT(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.vcpu*, %struct.vcpu** %5, align 8
  %17 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KVM_RUN, align 4
  %20 = call i32 @ioctl(i32 %18, i32 %19, i32* null)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINTR, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %15, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.vcpu* @vcpu_find(%struct.kvm_vm*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
