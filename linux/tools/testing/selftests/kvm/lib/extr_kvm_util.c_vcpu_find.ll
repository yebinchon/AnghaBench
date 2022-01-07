; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vcpu_find.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_vcpu_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu = type { i64, %struct.vcpu* }
%struct.kvm_vm = type { %struct.vcpu* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vcpu* @vcpu_find(%struct.kvm_vm* %0, i64 %1) #0 {
  %3 = alloca %struct.vcpu*, align 8
  %4 = alloca %struct.kvm_vm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vcpu*, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.kvm_vm*, %struct.kvm_vm** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %7, i32 0, i32 0
  %9 = load %struct.vcpu*, %struct.vcpu** %8, align 8
  store %struct.vcpu* %9, %struct.vcpu** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.vcpu*, %struct.vcpu** %6, align 8
  %12 = icmp ne %struct.vcpu* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.vcpu*, %struct.vcpu** %6, align 8
  %15 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.vcpu*, %struct.vcpu** %6, align 8
  store %struct.vcpu* %20, %struct.vcpu** %3, align 8
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.vcpu*, %struct.vcpu** %6, align 8
  %24 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %23, i32 0, i32 1
  %25 = load %struct.vcpu*, %struct.vcpu** %24, align 8
  store %struct.vcpu* %25, %struct.vcpu** %6, align 8
  br label %10

26:                                               ; preds = %10
  store %struct.vcpu* null, %struct.vcpu** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.vcpu*, %struct.vcpu** %3, align 8
  ret %struct.vcpu* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
