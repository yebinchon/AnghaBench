; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_steal_suitable_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_steal_suitable_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { %struct.free_area*, i32 }
%struct.free_area = type { i32 }
%struct.page = type { i32 }

@pageblock_order = common dso_local global i32 0, align 4
@ALLOC_KSWAPD = common dso_local global i32 0, align 4
@ZONE_BOOSTED_WATERMARK = common dso_local global i32 0, align 4
@MIGRATE_MOVABLE = common dso_local global i32 0, align 4
@pageblock_nr_pages = common dso_local global i32 0, align 4
@page_group_by_mobility_disabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*, %struct.page*, i32, i32, i32)* @steal_suitable_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steal_suitable_fallback(%struct.zone* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.free_area*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.zone* %0, %struct.zone** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = call i32 @page_order(%struct.page* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = call i32 @get_pageblock_migratetype(%struct.page* %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = call i64 @is_migrate_highatomic(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %92

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @pageblock_order, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @change_pageblock_range(%struct.page* %30, i32 %31, i32 %32)
  br label %92

34:                                               ; preds = %25
  %35 = load %struct.zone*, %struct.zone** %6, align 8
  %36 = call i32 @boost_watermark(%struct.zone* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ALLOC_KSWAPD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @ZONE_BOOSTED_WATERMARK, align 4
  %43 = load %struct.zone*, %struct.zone** %6, align 8
  %44 = getelementptr inbounds %struct.zone, %struct.zone* %43, i32 0, i32 1
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %92

50:                                               ; preds = %46
  %51 = load %struct.zone*, %struct.zone** %6, align 8
  %52 = load %struct.page*, %struct.page** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @move_freepages_block(%struct.zone* %51, %struct.page* %52, i32 %53, i32* %14)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @MIGRATE_MOVABLE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %15, align 4
  br label %72

60:                                               ; preds = %50
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @MIGRATE_MOVABLE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @pageblock_nr_pages, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %65, %68
  store i32 %69, i32* %15, align 4
  br label %71

70:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %58
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %92

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* @pageblock_order, align 4
  %81 = sub i32 %80, 1
  %82 = shl i32 1, %81
  %83 = icmp sge i32 %79, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load i64, i64* @page_group_by_mobility_disabled, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84, %76
  %88 = load %struct.page*, %struct.page** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @set_pageblock_migratetype(%struct.page* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %84
  br label %103

92:                                               ; preds = %75, %49, %29, %24
  %93 = load %struct.zone*, %struct.zone** %6, align 8
  %94 = getelementptr inbounds %struct.zone, %struct.zone* %93, i32 0, i32 0
  %95 = load %struct.free_area*, %struct.free_area** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.free_area, %struct.free_area* %95, i64 %97
  store %struct.free_area* %98, %struct.free_area** %12, align 8
  %99 = load %struct.page*, %struct.page** %7, align 8
  %100 = load %struct.free_area*, %struct.free_area** %12, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @move_to_free_area(%struct.page* %99, %struct.free_area* %100, i32 %101)
  br label %103

103:                                              ; preds = %92, %91
  ret void
}

declare dso_local i32 @page_order(%struct.page*) #1

declare dso_local i32 @get_pageblock_migratetype(%struct.page*) #1

declare dso_local i64 @is_migrate_highatomic(i32) #1

declare dso_local i32 @change_pageblock_range(%struct.page*, i32, i32) #1

declare dso_local i32 @boost_watermark(%struct.zone*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @move_freepages_block(%struct.zone*, %struct.page*, i32, i32*) #1

declare dso_local i32 @set_pageblock_migratetype(%struct.page*, i32) #1

declare dso_local i32 @move_to_free_area(%struct.page*, %struct.free_area*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
