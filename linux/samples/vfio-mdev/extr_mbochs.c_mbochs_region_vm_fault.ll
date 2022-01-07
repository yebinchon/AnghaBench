; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_region_vm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_mbochs_region_vm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, %struct.mdev_state* }
%struct.mdev_state = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @mbochs_region_vm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbochs_region_vm_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mdev_state*, align 8
  %6 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %7 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %8 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %7, i32 0, i32 2
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  store %struct.vm_area_struct* %9, %struct.vm_area_struct** %4, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 1
  %12 = load %struct.mdev_state*, %struct.mdev_state** %11, align 8
  store %struct.mdev_state* %12, %struct.mdev_state** %5, align 8
  %13 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %14 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = ashr i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %24 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %1
  %30 = load %struct.mdev_state*, %struct.mdev_state** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @mbochs_get_page(%struct.mdev_state* %30, i64 %31)
  %33 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %34 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %36 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mbochs_get_page(%struct.mdev_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
