; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_clear_page_mlock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_clear_page_mlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_MLOCK = common dso_local global i32 0, align 4
@UNEVICTABLE_PGCLEARED = common dso_local global i32 0, align 4
@UNEVICTABLE_PGSTRANDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_page_mlock(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @TestClearPageMlocked(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %31

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %2, align 8
  %9 = call i32 @page_zone(%struct.page* %8)
  %10 = load i32, i32* @NR_MLOCK, align 4
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call i32 @hpage_nr_pages(%struct.page* %11)
  %13 = sub nsw i32 0, %12
  %14 = call i32 @mod_zone_page_state(i32 %9, i32 %10, i32 %13)
  %15 = load i32, i32* @UNEVICTABLE_PGCLEARED, align 4
  %16 = call i32 @count_vm_event(i32 %15)
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @isolate_lru_page(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i32 @putback_lru_page(%struct.page* %21)
  br label %31

23:                                               ; preds = %7
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i64 @PageUnevictable(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @UNEVICTABLE_PGSTRANDED, align 4
  %29 = call i32 @count_vm_event(i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %6, %30, %20
  ret void
}

declare dso_local i32 @TestClearPageMlocked(%struct.page*) #1

declare dso_local i32 @mod_zone_page_state(i32, i32, i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

declare dso_local i64 @PageUnevictable(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
