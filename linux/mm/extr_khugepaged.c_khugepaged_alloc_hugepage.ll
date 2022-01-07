; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_khugepaged_alloc_hugepage.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_khugepaged.c_khugepaged_alloc_hugepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@THP_COLLAPSE_ALLOC_FAILED = common dso_local global i32 0, align 4
@THP_COLLAPSE_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32*)* @khugepaged_alloc_hugepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @khugepaged_alloc_hugepage(i32* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.page*, align 8
  store i32* %0, i32** %3, align 8
  br label %5

5:                                                ; preds = %34, %1
  %6 = call %struct.page* (...) @alloc_khugepaged_hugepage()
  store %struct.page* %6, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = icmp ne %struct.page* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @THP_COLLAPSE_ALLOC_FAILED, align 4
  %11 = call i32 @count_vm_event(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store %struct.page* null, %struct.page** %2, align 8
  br label %38

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  store i32 0, i32* %17, align 4
  %18 = call i32 (...) @khugepaged_alloc_sleep()
  br label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @THP_COLLAPSE_ALLOC, align 4
  %21 = call i32 @count_vm_event(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = icmp ne %struct.page* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = call i32 (...) @khugepaged_enabled()
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i1 [ false, %23 ], [ %33, %30 ]
  br i1 %35, label %5, label %36

36:                                               ; preds = %34
  %37 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %37, %struct.page** %2, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %39
}

declare dso_local %struct.page* @alloc_khugepaged_hugepage(...) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @khugepaged_alloc_sleep(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @khugepaged_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
