; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_wakeup_kswapd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_wakeup_kswapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32 }

@MAX_NR_ZONES = common dso_local global i64 0, align 8
@MAX_RECLAIM_RETRIES = common dso_local global i64 0, align 8
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wakeup_kswapd(%struct.zone* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.zone* %0, %struct.zone** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.zone*, %struct.zone** %5, align 8
  %11 = call i32 @managed_zone(%struct.zone* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %97

14:                                               ; preds = %4
  %15 = load %struct.zone*, %struct.zone** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cpuset_zone_allowed(%struct.zone* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %97

20:                                               ; preds = %14
  %21 = load %struct.zone*, %struct.zone** %5, align 8
  %22 = getelementptr inbounds %struct.zone, %struct.zone* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_NR_ZONES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %44

34:                                               ; preds = %20
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @max(i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %34, %29
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @max(i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = call i32 @waitqueue_active(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %97

58:                                               ; preds = %44
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MAX_RECLAIM_RETRIES, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @pgdat_balanced(%struct.TYPE_5__* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pgdat_watermark_boosted(%struct.TYPE_5__* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %70, %58
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @wakeup_kcompactd(%struct.TYPE_5__* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  br label %97

86:                                               ; preds = %70, %64
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @trace_mm_vmscan_wakeup_kswapd(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = call i32 @wake_up_interruptible(i32* %95)
  br label %97

97:                                               ; preds = %86, %85, %57, %19, %13
  ret void
}

declare dso_local i32 @managed_zone(%struct.zone*) #1

declare dso_local i32 @cpuset_zone_allowed(%struct.zone*, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i64 @pgdat_balanced(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pgdat_watermark_boosted(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @wakeup_kcompactd(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @trace_mm_vmscan_wakeup_kswapd(i32, i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
