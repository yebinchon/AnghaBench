; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_rmqueue.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_rmqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zone = type { i32, i32 }

@__GFP_NOFAIL = common dso_local global i32 0, align 4
@ALLOC_HARDER = common dso_local global i32 0, align 4
@MIGRATE_HIGHATOMIC = common dso_local global i32 0, align 4
@PGALLOC = common dso_local global i32 0, align 4
@ZONE_BOOSTED_WATERMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.zone*, %struct.zone*, i32, i32, i32, i32)* @rmqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @rmqueue(%struct.zone* %0, %struct.zone* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.zone*, align 8
  %9 = alloca %struct.zone*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %8, align 8
  store %struct.zone* %1, %struct.zone** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load %struct.zone*, %struct.zone** %8, align 8
  %23 = load %struct.zone*, %struct.zone** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.page* @rmqueue_pcplist(%struct.zone* %22, %struct.zone* %23, i32 %24, i32 %25, i32 %26)
  store %struct.page* %27, %struct.page** %15, align 8
  br label %108

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @__GFP_NOFAIL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = icmp ugt i32 %34, 1
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i1 [ false, %28 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON_ONCE(i32 %38)
  %40 = load %struct.zone*, %struct.zone** %9, align 8
  %41 = getelementptr inbounds %struct.zone, %struct.zone* %40, i32 0, i32 1
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %80, %36
  store %struct.page* null, %struct.page** %15, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @ALLOC_HARDER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.zone*, %struct.zone** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MIGRATE_HIGHATOMIC, align 4
  %53 = call %struct.page* @__rmqueue_smallest(%struct.zone* %50, i32 %51, i32 %52)
  store %struct.page* %53, %struct.page** %15, align 8
  %54 = load %struct.page*, %struct.page** %15, align 8
  %55 = icmp ne %struct.page* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.page*, %struct.page** %15, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @trace_mm_page_alloc_zone_locked(%struct.page* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %49
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.page*, %struct.page** %15, align 8
  %64 = icmp ne %struct.page* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load %struct.zone*, %struct.zone** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call %struct.page* @__rmqueue(%struct.zone* %66, i32 %67, i32 %68, i32 %69)
  store %struct.page* %70, %struct.page** %15, align 8
  br label %71

71:                                               ; preds = %65, %62
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.page*, %struct.page** %15, align 8
  %74 = icmp ne %struct.page* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.page*, %struct.page** %15, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @check_new_pages(%struct.page* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i1 [ false, %72 ], [ %79, %75 ]
  br i1 %81, label %44, label %82

82:                                               ; preds = %80
  %83 = load %struct.zone*, %struct.zone** %9, align 8
  %84 = getelementptr inbounds %struct.zone, %struct.zone* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.page*, %struct.page** %15, align 8
  %87 = icmp ne %struct.page* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %137

89:                                               ; preds = %82
  %90 = load %struct.zone*, %struct.zone** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 1, %91
  %93 = sub nsw i32 0, %92
  %94 = load %struct.page*, %struct.page** %15, align 8
  %95 = call i32 @get_pcppage_migratetype(%struct.page* %94)
  %96 = call i32 @__mod_zone_freepage_state(%struct.zone* %90, i32 %93, i32 %95)
  %97 = load i32, i32* @PGALLOC, align 4
  %98 = load %struct.page*, %struct.page** %15, align 8
  %99 = call i32 @page_zonenum(%struct.page* %98)
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 1, %100
  %102 = call i32 @__count_zid_vm_events(i32 %97, i32 %99, i32 %101)
  %103 = load %struct.zone*, %struct.zone** %8, align 8
  %104 = load %struct.zone*, %struct.zone** %9, align 8
  %105 = call i32 @zone_statistics(%struct.zone* %103, %struct.zone* %104)
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @local_irq_restore(i64 %106)
  br label %108

108:                                              ; preds = %89, %21
  %109 = load i32, i32* @ZONE_BOOSTED_WATERMARK, align 4
  %110 = load %struct.zone*, %struct.zone** %9, align 8
  %111 = getelementptr inbounds %struct.zone, %struct.zone* %110, i32 0, i32 0
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load i32, i32* @ZONE_BOOSTED_WATERMARK, align 4
  %116 = load %struct.zone*, %struct.zone** %9, align 8
  %117 = getelementptr inbounds %struct.zone, %struct.zone* %116, i32 0, i32 0
  %118 = call i32 @clear_bit(i32 %115, i32* %117)
  %119 = load %struct.zone*, %struct.zone** %9, align 8
  %120 = load %struct.zone*, %struct.zone** %9, align 8
  %121 = call i32 @zone_idx(%struct.zone* %120)
  %122 = call i32 @wakeup_kswapd(%struct.zone* %119, i32 0, i32 0, i32 %121)
  br label %123

123:                                              ; preds = %114, %108
  %124 = load %struct.page*, %struct.page** %15, align 8
  %125 = icmp ne %struct.page* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.zone*, %struct.zone** %9, align 8
  %128 = load %struct.page*, %struct.page** %15, align 8
  %129 = call i64 @bad_range(%struct.zone* %127, %struct.page* %128)
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %126, %123
  %132 = phi i1 [ false, %123 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = load %struct.page*, %struct.page** %15, align 8
  %135 = call i32 @VM_BUG_ON_PAGE(i32 %133, %struct.page* %134)
  %136 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %136, %struct.page** %7, align 8
  br label %140

137:                                              ; preds = %88
  %138 = load i64, i64* %14, align 8
  %139 = call i32 @local_irq_restore(i64 %138)
  store %struct.page* null, %struct.page** %7, align 8
  br label %140

140:                                              ; preds = %137, %131
  %141 = load %struct.page*, %struct.page** %7, align 8
  ret %struct.page* %141
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.page* @rmqueue_pcplist(%struct.zone*, %struct.zone*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.page* @__rmqueue_smallest(%struct.zone*, i32, i32) #1

declare dso_local i32 @trace_mm_page_alloc_zone_locked(%struct.page*, i32, i32) #1

declare dso_local %struct.page* @__rmqueue(%struct.zone*, i32, i32, i32) #1

declare dso_local i64 @check_new_pages(%struct.page*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__mod_zone_freepage_state(%struct.zone*, i32, i32) #1

declare dso_local i32 @get_pcppage_migratetype(%struct.page*) #1

declare dso_local i32 @__count_zid_vm_events(i32, i32, i32) #1

declare dso_local i32 @page_zonenum(%struct.page*) #1

declare dso_local i32 @zone_statistics(%struct.zone*, %struct.zone*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wakeup_kswapd(%struct.zone*, i32, i32, i32) #1

declare dso_local i32 @zone_idx(%struct.zone*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i64 @bad_range(%struct.zone*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
