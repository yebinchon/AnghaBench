; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_userspace_mem_region_find.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/extr_kvm_util.c_userspace_mem_region_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userspace_mem_region = type { %struct.TYPE_2__, %struct.userspace_mem_region* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.kvm_vm = type { %struct.userspace_mem_region* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.userspace_mem_region* (%struct.kvm_vm*, i64, i64)* @userspace_mem_region_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.userspace_mem_region* @userspace_mem_region_find(%struct.kvm_vm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.userspace_mem_region*, align 8
  %5 = alloca %struct.kvm_vm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.userspace_mem_region*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kvm_vm* %0, %struct.kvm_vm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.kvm_vm*, %struct.kvm_vm** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_vm, %struct.kvm_vm* %11, i32 0, i32 0
  %13 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %12, align 8
  store %struct.userspace_mem_region* %13, %struct.userspace_mem_region** %8, align 8
  br label %14

14:                                               ; preds = %42, %3
  %15 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  %16 = icmp ne %struct.userspace_mem_region* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  %19 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  %23 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  %27 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = sub nsw i64 %30, 1
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  store %struct.userspace_mem_region* %40, %struct.userspace_mem_region** %4, align 8
  br label %47

41:                                               ; preds = %35, %17
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %8, align 8
  %44 = getelementptr inbounds %struct.userspace_mem_region, %struct.userspace_mem_region* %43, i32 0, i32 1
  %45 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %44, align 8
  store %struct.userspace_mem_region* %45, %struct.userspace_mem_region** %8, align 8
  br label %14

46:                                               ; preds = %14
  store %struct.userspace_mem_region* null, %struct.userspace_mem_region** %4, align 8
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.userspace_mem_region*, %struct.userspace_mem_region** %4, align 8
  ret %struct.userspace_mem_region* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
