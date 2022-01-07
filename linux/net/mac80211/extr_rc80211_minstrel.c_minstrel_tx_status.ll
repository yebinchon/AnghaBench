; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_tx_status = type { %struct.ieee80211_tx_info* }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i64, i64 }
%struct.minstrel_priv = type { i32 }
%struct.minstrel_sta_info = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, i8*, %struct.ieee80211_tx_status*)* @minstrel_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, i8* %2, %struct.ieee80211_tx_status* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_status*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.minstrel_priv*, align 8
  %11 = alloca %struct.minstrel_sta_info*, align 8
  %12 = alloca %struct.ieee80211_tx_rate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_status* %3, %struct.ieee80211_tx_status** %8, align 8
  %16 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %17, align 8
  store %struct.ieee80211_tx_info* %18, %struct.ieee80211_tx_info** %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %20, %struct.minstrel_priv** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.minstrel_sta_info*
  store %struct.minstrel_sta_info* %22, %struct.minstrel_sta_info** %11, align 8
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %25, align 8
  store %struct.ieee80211_tx_rate* %26, %struct.ieee80211_tx_rate** %12, align 8
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %106, %4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %109

40:                                               ; preds = %36
  %41 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %41, i64 %43
  %45 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %109

49:                                               ; preds = %40
  %50 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %51 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %51, i64 %53
  %55 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @rix_to_ndx(%struct.minstrel_sta_info* %50, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %106

61:                                               ; preds = %49
  %62 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %62, i64 %64
  %66 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %69 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %67
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %61
  %85 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %85, i64 %88
  %90 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %84
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %96 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %94
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %93, %84, %61
  br label %106

106:                                              ; preds = %105, %60
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %36

109:                                              ; preds = %48, %36
  %110 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load i32, i32* %13, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %121 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %116, %109
  %125 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %126 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %131 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %129, %124
  %135 = load i32, i32* @jiffies, align 4
  %136 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %137 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %140 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @HZ, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sdiv i32 %143, 1000
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %138, %145
  %147 = call i64 @time_after(i32 %135, i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %134
  %150 = load %struct.minstrel_priv*, %struct.minstrel_priv** %10, align 8
  %151 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %152 = call i32 @minstrel_update_stats(%struct.minstrel_priv* %150, %struct.minstrel_sta_info* %151)
  br label %153

153:                                              ; preds = %149, %134
  ret void
}

declare dso_local i32 @rix_to_ndx(%struct.minstrel_sta_info*, i64) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @minstrel_update_stats(%struct.minstrel_priv*, %struct.minstrel_sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
