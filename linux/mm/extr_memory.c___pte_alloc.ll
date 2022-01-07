; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___pte_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___pte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pte_alloc(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %9 = call i32* @pte_alloc_one(%struct.mm_struct* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = call i32 (...) @smp_wmb()
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @pmd_lock(%struct.mm_struct* %17, i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pmd_none(i32 %21)
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %27 = call i32 @mm_inc_nr_ptes(%struct.mm_struct* %26)
  %28 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @pmd_populate(%struct.mm_struct* %28, i32* %29, i32* %30)
  store i32* null, i32** %7, align 8
  br label %32

32:                                               ; preds = %25, %15
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @pte_free(%struct.mm_struct* %38, i32* %39)
  br label %41

41:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @pte_alloc_one(%struct.mm_struct*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32* @pmd_lock(%struct.mm_struct*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @mm_inc_nr_ptes(%struct.mm_struct*) #1

declare dso_local i32 @pmd_populate(%struct.mm_struct*, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pte_free(%struct.mm_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
