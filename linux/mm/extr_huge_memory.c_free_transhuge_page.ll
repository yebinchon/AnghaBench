; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_free_transhuge_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_free_transhuge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.deferred_split = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_transhuge_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.deferred_split*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.deferred_split* @get_deferred_split_queue(%struct.page* %5)
  store %struct.deferred_split* %6, %struct.deferred_split** %3, align 8
  %7 = load %struct.deferred_split*, %struct.deferred_split** %3, align 8
  %8 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @page_deferred_list(%struct.page* %11)
  %13 = call i32 @list_empty(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.deferred_split*, %struct.deferred_split** %3, align 8
  %17 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @page_deferred_list(%struct.page* %20)
  %22 = call i32 @list_del(i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.deferred_split*, %struct.deferred_split** %3, align 8
  %25 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = call i32 @free_compound_page(%struct.page* %28)
  ret void
}

declare dso_local %struct.deferred_split* @get_deferred_split_queue(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32) #1

declare dso_local i32 @page_deferred_list(%struct.page*) #1

declare dso_local i32 @list_del(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_compound_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
