; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_hugepage_madvise.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_hugepage_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@VM_NOHUGEPAGE = common dso_local global i64 0, align 8
@VM_HUGEPAGE = common dso_local global i64 0, align 8
@VM_NO_KHUGEPAGED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hugepage_madvise(%struct.vm_area_struct* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %44 [
    i32 129, label %9
    i32 128, label %34
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* @VM_NOHUGEPAGE, align 8
  %11 = xor i64 %10, -1
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %13, %11
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* @VM_HUGEPAGE, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  %18 = or i64 %17, %15
  store i64 %18, i64* %16, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VM_NO_KHUGEPAGED, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %9
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct* %25, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %45

33:                                               ; preds = %24, %9
  br label %44

34:                                               ; preds = %3
  %35 = load i64, i64* @VM_HUGEPAGE, align 8
  %36 = xor i64 %35, -1
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %38, %36
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* @VM_NOHUGEPAGE, align 8
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %40
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %3, %34, %33
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
