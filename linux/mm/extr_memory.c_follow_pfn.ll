; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_follow_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_follow_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @follow_pfn(%struct.vm_area_struct* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VM_IO, align 4
  %17 = load i32, i32* @VM_PFNMAP, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %3
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @follow_pte(i32 %26, i64 %27, i32** %10, i32** %9)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %23
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @pte_pfn(i32 %35)
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @pte_unmap_unlock(i32* %38, i32* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %31, %21
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @follow_pte(i32, i64, i32**, i32**) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
