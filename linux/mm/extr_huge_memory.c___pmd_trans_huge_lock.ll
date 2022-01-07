; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___pmd_trans_huge_lock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___pmd_trans_huge_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__pmd_trans_huge_lock(i32* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @pmd_lock(i32 %9, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @is_swap_pmd(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pmd_trans_huge(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pmd_devmap(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16, %2
  %27 = phi i1 [ true, %16 ], [ true, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %3, align 8
  br label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @spin_unlock(i32* %34)
  store i32* null, i32** %3, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32* @pmd_lock(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @is_swap_pmd(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
