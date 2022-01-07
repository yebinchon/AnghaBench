; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_reserve_highatomic_pageblock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_reserve_highatomic_pageblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i64, i32 }

@pageblock_nr_pages = common dso_local global i32 0, align 4
@MIGRATE_HIGHATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.zone*, i32)* @reserve_highatomic_pageblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reserve_highatomic_pageblock(%struct.page* %0, %struct.zone* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.zone* %1, %struct.zone** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.zone*, %struct.zone** %5, align 8
  %11 = call i32 @zone_managed_pages(%struct.zone* %10)
  %12 = sdiv i32 %11, 100
  %13 = load i32, i32* @pageblock_nr_pages, align 4
  %14 = add nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load %struct.zone*, %struct.zone** %5, align 8
  %17 = getelementptr inbounds %struct.zone, %struct.zone* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.zone*, %struct.zone** %5, align 8
  %24 = getelementptr inbounds %struct.zone, %struct.zone* %23, i32 0, i32 1
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.zone*, %struct.zone** %5, align 8
  %28 = getelementptr inbounds %struct.zone, %struct.zone* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %62

33:                                               ; preds = %22
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @get_pageblock_migratetype(%struct.page* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @is_migrate_highatomic(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @is_migrate_isolate(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @is_migrate_cma(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @pageblock_nr_pages, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.zone*, %struct.zone** %5, align 8
  %51 = getelementptr inbounds %struct.zone, %struct.zone* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.page*, %struct.page** %4, align 8
  %55 = load i32, i32* @MIGRATE_HIGHATOMIC, align 4
  %56 = call i32 @set_pageblock_migratetype(%struct.page* %54, i32 %55)
  %57 = load %struct.zone*, %struct.zone** %5, align 8
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = load i32, i32* @MIGRATE_HIGHATOMIC, align 4
  %60 = call i32 @move_freepages_block(%struct.zone* %57, %struct.page* %58, i32 %59, i32* null)
  br label %61

61:                                               ; preds = %47, %43, %39, %33
  br label %62

62:                                               ; preds = %61, %32
  %63 = load %struct.zone*, %struct.zone** %5, align 8
  %64 = getelementptr inbounds %struct.zone, %struct.zone* %63, i32 0, i32 1
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %21
  ret void
}

declare dso_local i32 @zone_managed_pages(%struct.zone*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @is_migrate_highatomic(i32) #1

declare dso_local i32 @is_migrate_isolate(i32) #1

declare dso_local i32 @is_migrate_cma(i32) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

declare dso_local i32 @move_freepages_block(%struct.zone*, %struct.page*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
