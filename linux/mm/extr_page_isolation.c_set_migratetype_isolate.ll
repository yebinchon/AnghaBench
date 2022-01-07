; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_set_migratetype_isolate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_isolation.c_set_migratetype_isolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32, i32 }
%struct.memory_isolate_notify = type { i64, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@pageblock_nr_pages = common dso_local global i32 0, align 4
@MEM_ISOLATE_COUNT = common dso_local global i32 0, align 4
@MIGRATE_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32)* @set_migratetype_isolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_migratetype_isolate(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zone*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.memory_isolate_notify, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call %struct.zone* @page_zone(%struct.page* %17)
  store %struct.zone* %18, %struct.zone** %7, align 8
  %19 = load %struct.zone*, %struct.zone** %7, align 8
  %20 = getelementptr inbounds %struct.zone, %struct.zone* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i64 @is_migrate_isolate_page(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %53

27:                                               ; preds = %3
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i64 @page_to_pfn(%struct.page* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %10, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* @pageblock_nr_pages, align 4
  %33 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %10, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %10, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @MEM_ISOLATE_COUNT, align 4
  %36 = call i32 @memory_isolate_notify(i32 %35, %struct.memory_isolate_notify* %10)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @notifier_to_errno(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %53

42:                                               ; preds = %27
  %43 = load %struct.zone*, %struct.zone** %7, align 8
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = getelementptr inbounds %struct.memory_isolate_notify, %struct.memory_isolate_notify* %10, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @has_unmovable_pages(%struct.zone* %43, %struct.page* %44, i64 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %51, %42
  br label %53

53:                                               ; preds = %52, %41, %26
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %53
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = call i32 @get_pageblock_migratetype(%struct.page* %57)
  store i32 %58, i32* %14, align 4
  %59 = load %struct.page*, %struct.page** %4, align 8
  %60 = load i32, i32* @MIGRATE_ISOLATE, align 4
  %61 = call i32 @set_pageblock_migratetype(%struct.page* %59, i32 %60)
  %62 = load %struct.zone*, %struct.zone** %7, align 8
  %63 = getelementptr inbounds %struct.zone, %struct.zone* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.zone*, %struct.zone** %7, align 8
  %67 = load %struct.page*, %struct.page** %4, align 8
  %68 = load i32, i32* @MIGRATE_ISOLATE, align 4
  %69 = call i64 @move_freepages_block(%struct.zone* %66, %struct.page* %67, i32 %68, i32* null)
  store i64 %69, i64* %13, align 8
  %70 = load %struct.zone*, %struct.zone** %7, align 8
  %71 = load i64, i64* %13, align 8
  %72 = sub i64 0, %71
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @__mod_zone_freepage_state(%struct.zone* %70, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %56, %53
  %76 = load %struct.zone*, %struct.zone** %7, align 8
  %77 = getelementptr inbounds %struct.zone, %struct.zone* %76, i32 0, i32 0
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load %struct.zone*, %struct.zone** %7, align 8
  %84 = call i32 @drain_all_pages(%struct.zone* %83)
  br label %85

85:                                               ; preds = %82, %75
  %86 = load i32, i32* %12, align 4
  ret i32 %86
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_migrate_isolate_page(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @memory_isolate_notify(i32, %struct.memory_isolate_notify*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @has_unmovable_pages(%struct.zone*, %struct.page*, i64, i32, i32) #1

declare dso_local i32 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

declare dso_local i64 @move_freepages_block(%struct.zone*, %struct.page*, i32, i32*) #1

declare dso_local i32 @__mod_zone_freepage_state(%struct.zone*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drain_all_pages(%struct.zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
