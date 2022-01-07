; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_isolate_lru_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_isolate_lru_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lruvec = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"trying to isolate tail page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isolate_lru_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.lruvec*, align 8
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @page_count(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i32 @VM_BUG_ON_PAGE(i32 %13, %struct.page* %14)
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call i32 @PageTail(%struct.page* %16)
  %18 = call i32 @WARN_RATELIMIT(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = call i64 @PageLRU(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.page*, %struct.page** %2, align 8
  %24 = call %struct.TYPE_4__* @page_pgdat(%struct.page* %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %28, %struct.TYPE_4__* %29)
  store %struct.lruvec* %30, %struct.lruvec** %5, align 8
  %31 = load %struct.page*, %struct.page** %2, align 8
  %32 = call i64 @PageLRU(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.page*, %struct.page** %2, align 8
  %36 = call i32 @page_lru(%struct.page* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.page*, %struct.page** %2, align 8
  %38 = call i32 @get_page(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %2, align 8
  %40 = call i32 @ClearPageLRU(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %2, align 8
  %42 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @del_page_from_lru_list(%struct.page* %41, %struct.lruvec* %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %22
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  br label %49

49:                                               ; preds = %45, %1
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @WARN_RATELIMIT(i32, i8*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i64 @PageLRU(%struct.page*) #1

declare dso_local %struct.TYPE_4__* @page_pgdat(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, %struct.TYPE_4__*) #1

declare dso_local i32 @page_lru(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @ClearPageLRU(%struct.page*) #1

declare dso_local i32 @del_page_from_lru_list(%struct.page*, %struct.lruvec*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
