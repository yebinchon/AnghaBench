; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mlock.c_munlock_vma_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mlock.c_munlock_vma_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NR_MLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @munlock_vma_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.TYPE_3__* @page_pgdat(%struct.page* %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @PageTail(%struct.page* %13)
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = call i32 @VM_BUG_ON_PAGE(i32 %14, %struct.page* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i32 @TestClearPageMlocked(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i32 @hpage_nr_pages(%struct.page* %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call i32 @page_zone(%struct.page* %27)
  %29 = load i32, i32* @NR_MLOCK, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @__mod_zone_page_state(i32 %28, i32 %29, i32 %31)
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i64 @__munlock_isolate_lru_page(%struct.page* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.page*, %struct.page** %2, align 8
  %41 = call i32 @__munlock_isolated_page(%struct.page* %40)
  br label %49

42:                                               ; preds = %24
  %43 = load %struct.page*, %struct.page** %2, align 8
  %44 = call i32 @__munlock_isolation_failed(%struct.page* %43)
  br label %45

45:                                               ; preds = %42, %23
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 1
  ret i32 %51
}

declare dso_local %struct.TYPE_3__* @page_pgdat(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @TestClearPageMlocked(%struct.page*) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i32 @__mod_zone_page_state(i32, i32, i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local i64 @__munlock_isolate_lru_page(%struct.page*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__munlock_isolated_page(%struct.page*) #1

declare dso_local i32 @__munlock_isolation_failed(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
