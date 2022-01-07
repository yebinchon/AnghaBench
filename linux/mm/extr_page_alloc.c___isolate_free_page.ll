; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___isolate_free_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c___isolate_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.free_area = type { i32 }
%struct.zone = type { i64*, %struct.free_area* }

@WMARK_MIN = common dso_local global i64 0, align 8
@ALLOC_CMA = common dso_local global i32 0, align 4
@pageblock_order = common dso_local global i32 0, align 4
@MIGRATE_MOVABLE = common dso_local global i32 0, align 4
@pageblock_nr_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__isolate_free_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.free_area*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call %struct.zone* @page_zone(%struct.page* %12)
  %14 = getelementptr inbounds %struct.zone, %struct.zone* %13, i32 0, i32 1
  %15 = load %struct.free_area*, %struct.free_area** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.free_area, %struct.free_area* %15, i64 %17
  store %struct.free_area* %18, %struct.free_area** %6, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @PageBuddy(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call %struct.zone* @page_zone(%struct.page* %25)
  store %struct.zone* %26, %struct.zone** %8, align 8
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @get_pageblock_migratetype(%struct.page* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @is_migrate_isolate(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %2
  %33 = load %struct.zone*, %struct.zone** %8, align 8
  %34 = getelementptr inbounds %struct.zone, %struct.zone* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @WMARK_MIN, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = add i64 %38, %41
  store i64 %42, i64* %7, align 8
  %43 = load %struct.zone*, %struct.zone** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @ALLOC_CMA, align 4
  %46 = call i32 @zone_watermark_ok(%struct.zone* %43, i32 0, i64 %44, i32 0, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %106

49:                                               ; preds = %32
  %50 = load %struct.zone*, %struct.zone** %8, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = sub i64 0, %53
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @__mod_zone_freepage_state(%struct.zone* %50, i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %2
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = load %struct.free_area*, %struct.free_area** %6, align 8
  %60 = call i32 @del_page_from_free_area(%struct.page* %58, %struct.free_area* %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @pageblock_order, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp uge i32 %61, %63
  br i1 %64, label %65, label %101

65:                                               ; preds = %57
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 1, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.page, %struct.page* %66, i64 %69
  %71 = getelementptr inbounds %struct.page, %struct.page* %70, i64 -1
  store %struct.page* %71, %struct.page** %10, align 8
  br label %72

72:                                               ; preds = %95, %65
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = icmp ult %struct.page* %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load %struct.page*, %struct.page** %4, align 8
  %78 = call i32 @get_pageblock_migratetype(%struct.page* %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @is_migrate_isolate(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @is_migrate_cma(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @is_migrate_highatomic(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load %struct.page*, %struct.page** %4, align 8
  %92 = load i32, i32* @MIGRATE_MOVABLE, align 4
  %93 = call i32 @set_pageblock_migratetype(%struct.page* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86, %82, %76
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* @pageblock_nr_pages, align 4
  %97 = load %struct.page*, %struct.page** %4, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.page, %struct.page* %97, i64 %98
  store %struct.page* %99, %struct.page** %4, align 8
  br label %72

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100, %57
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = shl i64 1, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %48
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.zone* @page_zone(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageBuddy(%struct.page*) #1

declare dso_local i32 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i32 @is_migrate_isolate(i32) #1

declare dso_local i32 @zone_watermark_ok(%struct.zone*, i32, i64, i32, i32) #1

declare dso_local i32 @__mod_zone_freepage_state(%struct.zone*, i64, i32) #1

declare dso_local i32 @del_page_from_free_area(%struct.page*, %struct.free_area*) #1

declare dso_local i32 @is_migrate_cma(i32) #1

declare dso_local i32 @is_migrate_highatomic(i32) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
