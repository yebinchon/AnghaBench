; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___get_locked_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___get_locked_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__get_locked_pte(%struct.mm_struct* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32* @pgd_offset(%struct.mm_struct* %12, i64 %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @p4d_alloc(%struct.mm_struct* %15, i32* %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32* @pud_alloc(%struct.mm_struct* %23, i32* %24, i64 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32* null, i32** %4, align 8
  br label %48

30:                                               ; preds = %22
  %31 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32* @pmd_alloc(%struct.mm_struct* %31, i32* %32, i64 %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32* null, i32** %4, align 8
  br label %48

38:                                               ; preds = %30
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pmd_trans_huge(i32 %40)
  %42 = call i32 @VM_BUG_ON(i32 %41)
  %43 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32**, i32*** %7, align 8
  %47 = call i32* @pte_alloc_map_lock(%struct.mm_struct* %43, i32* %44, i64 %45, i32** %46)
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %38, %37, %29, %21
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @p4d_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32* @pte_alloc_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
