; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_try_to_free_swap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_try_to_free_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_to_free_swap(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %4 = load %struct.page*, %struct.page** %3, align 8
  %5 = call i32 @PageLocked(%struct.page* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @VM_BUG_ON_PAGE(i32 %8, %struct.page* %9)
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i32 @PageSwapCache(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i64 @PageWriteback(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %36

20:                                               ; preds = %15
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i64 @page_swapped(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

25:                                               ; preds = %20
  %26 = call i64 (...) @pm_suspended_storage()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %36

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call %struct.page* @compound_head(%struct.page* %30)
  store %struct.page* %31, %struct.page** %3, align 8
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @delete_from_swap_cache(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @SetPageDirty(%struct.page* %34)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %28, %24, %19, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i64 @page_swapped(%struct.page*) #1

declare dso_local i64 @pm_suspended_storage(...) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @delete_from_swap_cache(%struct.page*) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
