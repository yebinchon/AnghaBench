; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap.c_rotate_reclaimable_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap.c_rotate_reclaimable_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.pagevec = type { i32 }

@lru_rotate_pvecs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rotate_reclaimable_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.pagevec*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @PageLocked(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @PageDirty(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @PageUnevictable(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i64 @PageLRU(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @get_page(%struct.page* %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @local_irq_save(i64 %23)
  %25 = call %struct.pagevec* @this_cpu_ptr(i32* @lru_rotate_pvecs)
  store %struct.pagevec* %25, %struct.pagevec** %3, align 8
  %26 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call i32 @pagevec_add(%struct.pagevec* %26, %struct.page* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.page*, %struct.page** %2, align 8
  %32 = call i64 @PageCompound(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %20
  %35 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %36 = call i32 @pagevec_move_tail(%struct.pagevec* %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  br label %40

40:                                               ; preds = %37, %16, %12, %8, %1
  ret void
}

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.pagevec* @this_cpu_ptr(i32*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i64 @PageCompound(%struct.page*) #1

declare dso_local i32 @pagevec_move_tail(%struct.pagevec*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
