; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_remap_pfn_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_remap_pfn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remap_pfn_range(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = shl i64 %13, %14
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %32

20:                                               ; preds = %5
  %21 = load i32, i32* @VM_IO, align 4
  %22 = load i32, i32* @VM_PFNMAP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @VM_DONTEXPAND, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VM_DONTDUMP, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %20, %17
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
