; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_airtime_link_metric_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_hwmp.c_airtime_link_metric_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ARITH_SHIFT = common dso_local global i32 0, align 4
@TEST_FRAME_LEN = common dso_local global i32 0, align 4
@LINK_FAIL_THRESH = common dso_local global i64 0, align 8
@MAX_METRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @airtime_link_metric_get(%struct.ieee80211_local* %0, %struct.sta_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  %15 = load i32, i32* @ARITH_SHIFT, align 4
  %16 = shl i32 1, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @TEST_FRAME_LEN, align 4
  %18 = load i32, i32* @ARITH_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @ARITH_SHIFT, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %23 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i64 @ewma_mesh_fail_avg_read(i32* %25)
  store i64 %26, i64* %14, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %28 = call i32 @sta_get_expected_throughput(%struct.sta_info* %27)
  %29 = call i32 @DIV_ROUND_UP(i32 %28, i32 100)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %60

33:                                               ; preds = %2
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @LINK_FAIL_THRESH, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @MAX_METRIC, align 4
  store i32 %38, i32* %3, align 4
  br label %81

39:                                               ; preds = %33
  %40 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @ewma_mesh_tx_rate_avg_read(i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @MAX_METRIC, align 4
  store i32 %52, i32* %3, align 4
  br label %81

53:                                               ; preds = %39
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* @ARITH_SHIFT, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 %54, %56
  %58 = udiv i64 %57, 100
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %53, %32
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 10, %62
  %64 = load i32, i32* %9, align 4
  %65 = sdiv i32 %63, %64
  %66 = add nsw i32 %61, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @ARITH_SHIFT, align 4
  %68 = mul nsw i32 2, %67
  %69 = shl i32 1, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sdiv i32 %69, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* @ARITH_SHIFT, align 4
  %78 = mul nsw i32 2, %77
  %79 = ashr i32 %76, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %60, %51, %37
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @ewma_mesh_fail_avg_read(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @sta_get_expected_throughput(%struct.sta_info*) #1

declare dso_local i32 @ewma_mesh_tx_rate_avg_read(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
