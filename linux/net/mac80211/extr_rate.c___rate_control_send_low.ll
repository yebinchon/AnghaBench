; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c___rate_control_send_low.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c___rate_control_send_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_supported_band = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sta = type { i32*, i32* }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"no supported rates for sta %pM (0x%x, band %d) in rate_mask 0x%x with flags 0x%x\0A\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.ieee80211_tx_info*, i32)* @__rate_control_send_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rate_control_send_low(%struct.ieee80211_hw* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_tx_info* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @ieee80211_chandef_rate_flags(i32* %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %5
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %29, %22, %5
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %84, %33
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %84

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %54, %62
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %84

67:                                               ; preds = %53
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @rate_supported(%struct.ieee80211_sta* %68, i64 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  br label %84

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %77, i32* %83, align 4
  br label %87

84:                                               ; preds = %75, %66, %52
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %40

87:                                               ; preds = %76, %40
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %90 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %88, %91
  %93 = zext i1 %92 to i32
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %95 = icmp ne %struct.ieee80211_sta* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  br label %101

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32* [ %99, %96 ], [ null, %100 ]
  %103 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %104 = icmp ne %struct.ieee80211_sta* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  br label %115

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %105
  %116 = phi i32 [ %113, %105 ], [ -1, %114 ]
  %117 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @WARN_ONCE(i32 %93, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32* %102, i32 %116, i64 %119, i32 %120, i32 %121)
  %123 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %124 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %134

130:                                              ; preds = %115
  %131 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %132 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  br label %134

134:                                              ; preds = %130, %129
  %135 = phi i32 [ 1, %129 ], [ %133, %130 ]
  %136 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i32 %135, i32* %141, align 4
  %142 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %143 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  ret void
}

declare dso_local i32 @ieee80211_chandef_rate_flags(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rate_supported(%struct.ieee80211_sta*, i64, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
