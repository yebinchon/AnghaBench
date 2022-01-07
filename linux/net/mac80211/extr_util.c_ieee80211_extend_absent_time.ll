; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_extend_absent_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_extend_absent_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_noa_data = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@IEEE80211_P2P_NOA_DESC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_noa_data*, i64, i64*)* @ieee80211_extend_absent_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_extend_absent_time(%struct.ieee80211_noa_data* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.ieee80211_noa_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ieee80211_noa_data* %0, %struct.ieee80211_noa_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %78, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @IEEE80211_P2P_NOA_DESC_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %78

24:                                               ; preds = %14
  %25 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @ieee80211_extend_noa_desc(%struct.ieee80211_noa_data* %25, i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %78

50:                                               ; preds = %34
  %51 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %58, %66
  %68 = load i64, i64* %5, align 8
  %69 = sub nsw i64 %67, %68
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %50
  %75 = load i64, i64* %9, align 8
  %76 = load i64*, i64** %6, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %50
  br label %78

78:                                               ; preds = %77, %49, %23
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %10

81:                                               ; preds = %10
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i64 @ieee80211_extend_noa_desc(%struct.ieee80211_noa_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
