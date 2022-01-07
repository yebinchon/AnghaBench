; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_allow_direct_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_allow_direct_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, %struct.zone* }
%struct.zone = type { i32 }

@MAX_RECLAIM_RETRIES = common dso_local global i64 0, align 8
@ZONE_NORMAL = common dso_local global i32 0, align 4
@NR_FREE_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @allow_direct_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allow_direct_reclaim(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAX_RECLAIM_RETRIES, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ZONE_NORMAL, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load %struct.zone*, %struct.zone** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.zone, %struct.zone* %23, i64 %25
  store %struct.zone* %26, %struct.zone** %4, align 8
  %27 = load %struct.zone*, %struct.zone** %4, align 8
  %28 = call i32 @managed_zone(%struct.zone* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %46

31:                                               ; preds = %20
  %32 = load %struct.zone*, %struct.zone** %4, align 8
  %33 = call i32 @zone_reclaimable_pages(%struct.zone* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %46

36:                                               ; preds = %31
  %37 = load %struct.zone*, %struct.zone** %4, align 8
  %38 = call i64 @min_wmark_pages(%struct.zone* %37)
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load %struct.zone*, %struct.zone** %4, align 8
  %42 = load i32, i32* @NR_FREE_PAGES, align 4
  %43 = call i64 @zone_page_state(%struct.zone* %41, i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %36, %35, %30
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %79

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = udiv i64 %55, 2
  %57 = icmp ugt i64 %54, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i64 @waitqueue_active(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ZONE_NORMAL, align 4
  %71 = call i32 @min(i32 %69, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = call i32 @wake_up_interruptible(i32* %75)
  br label %77

77:                                               ; preds = %66, %61, %53
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %52, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @managed_zone(%struct.zone*) #1

declare dso_local i32 @zone_reclaimable_pages(%struct.zone*) #1

declare dso_local i64 @min_wmark_pages(%struct.zone*) #1

declare dso_local i64 @zone_page_state(%struct.zone*, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
