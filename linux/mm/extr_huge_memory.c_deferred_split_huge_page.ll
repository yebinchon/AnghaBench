; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_deferred_split_huge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_deferred_split_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.deferred_split = type { i32, i32, i32 }

@THP_DEFERRED_SPLIT_PAGE = common dso_local global i32 0, align 4
@deferred_split_shrinker = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deferred_split_huge_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.deferred_split*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.deferred_split* @get_deferred_split_queue(%struct.page* %5)
  store %struct.deferred_split* %6, %struct.deferred_split** %3, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @PageTransHuge(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.page*, %struct.page** %2, align 8
  %13 = call i32 @VM_BUG_ON_PAGE(i32 %11, %struct.page* %12)
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i64 @PageSwapCache(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.deferred_split*, %struct.deferred_split** %3, align 8
  %20 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call i32 @page_deferred_list(%struct.page* %23)
  %25 = call i64 @list_empty(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load i32, i32* @THP_DEFERRED_SPLIT_PAGE, align 4
  %29 = call i32 @count_vm_event(i32 %28)
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = call i32 @page_deferred_list(%struct.page* %30)
  %32 = load %struct.deferred_split*, %struct.deferred_split** %3, align 8
  %33 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %32, i32 0, i32 2
  %34 = call i32 @list_add_tail(i32 %31, i32* %33)
  %35 = load %struct.deferred_split*, %struct.deferred_split** %3, align 8
  %36 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %27, %18
  %40 = load %struct.deferred_split*, %struct.deferred_split** %3, align 8
  %41 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %39, %17
  ret void
}

declare dso_local %struct.deferred_split* @get_deferred_split_queue(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32) #1

declare dso_local i32 @page_deferred_list(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @list_add_tail(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
