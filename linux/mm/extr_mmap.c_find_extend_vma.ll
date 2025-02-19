; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_find_extend_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_find_extend_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i32 }
%struct.mm_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @PAGE_MASK, align 8
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %11, i64 %12)
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %6, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %3, align 8
  br label %61

25:                                               ; preds = %17
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VM_GROWSDOWN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  br label %61

33:                                               ; preds = %25
  %34 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %35 = call i32 @mmget_still_valid(%struct.mm_struct* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  br label %61

38:                                               ; preds = %33
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @expand_stack(%struct.vm_area_struct* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  br label %61

47:                                               ; preds = %38
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VM_LOCKED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @populate_vma_page_range(%struct.vm_area_struct* %55, i64 %56, i64 %57, i32* null)
  br label %59

59:                                               ; preds = %54, %47
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %60, %struct.vm_area_struct** %3, align 8
  br label %61

61:                                               ; preds = %59, %46, %37, %32, %23, %16
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  ret %struct.vm_area_struct* %62
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @mmget_still_valid(%struct.mm_struct*) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @populate_vma_page_range(%struct.vm_area_struct*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
