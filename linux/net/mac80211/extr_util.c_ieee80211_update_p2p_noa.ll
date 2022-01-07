; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_update_p2p_noa.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_update_p2p_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_noa_data = type { i32, i32, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_P2P_NOA_DESC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_update_p2p_noa(%struct.ieee80211_noa_data* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_noa_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ieee80211_noa_data* %0, %struct.ieee80211_noa_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i32 @BIT(i32 31)
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %62, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IEEE80211_P2P_NOA_DESC_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %62

29:                                               ; preds = %19
  %30 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ieee80211_extend_noa_desc(%struct.ieee80211_noa_data* %30, i64 %31, i32 %32)
  %34 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %50 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %29
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %61 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %28
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @ieee80211_get_noa_absent_time(%struct.ieee80211_noa_data* %71, i64 %72)
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = add nsw i64 %75, %76
  %78 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_extend_noa_desc(%struct.ieee80211_noa_data*, i64, i32) #1

declare dso_local i64 @ieee80211_get_noa_absent_time(%struct.ieee80211_noa_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
