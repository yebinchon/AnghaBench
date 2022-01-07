; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___p4d_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___p4d_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__p4d_alloc(%struct.mm_struct* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32* @p4d_alloc_one(%struct.mm_struct* %9, i64 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = call i32 (...) @smp_wmb()
  %19 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %20 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pgd_present(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @p4d_free(%struct.mm_struct* %27, i32* %28)
  br label %35

30:                                               ; preds = %17
  %31 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @pgd_populate(%struct.mm_struct* %31, i32* %32, i32* %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %37 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32* @p4d_alloc_one(%struct.mm_struct*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @pgd_present(i32) #1

declare dso_local i32 @p4d_free(%struct.mm_struct*, i32*) #1

declare dso_local i32 @pgd_populate(%struct.mm_struct*, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
