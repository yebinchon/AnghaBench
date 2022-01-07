; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_tx_radiotap_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_tx_radiotap_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ieee80211_tx_status = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_DMG = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_EDMG = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_HE_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_info*, %struct.ieee80211_tx_status*)* @ieee80211_tx_radiotap_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_radiotap_len(%struct.ieee80211_tx_info* %0, %struct.ieee80211_tx_status* %1) #0 {
  %3 = alloca %struct.ieee80211_tx_info*, align 8
  %4 = alloca %struct.ieee80211_tx_status*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_tx_info* %0, %struct.ieee80211_tx_info** %3, align 8
  store %struct.ieee80211_tx_status* %1, %struct.ieee80211_tx_status** %4, align 8
  store i32 4, i32* %5, align 4
  %6 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %7 = icmp ne %struct.ieee80211_tx_status* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %20 = load i32, i32* @RATE_INFO_FLAGS_DMG, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RATE_INFO_FLAGS_EDMG, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RATE_INFO_FLAGS_HE_MCS, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %18, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %5, align 4
  br label %59

33:                                               ; preds = %13, %8, %2
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %33
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %51 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 2
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %42, %33
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %65 = icmp ne %struct.ieee80211_tx_status* %64, null
  br i1 %65, label %66, label %112

66:                                               ; preds = %59
  %67 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %112

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 3
  store i32 %82, i32* %5, align 4
  br label %111

83:                                               ; preds = %71
  %84 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ALIGN(i32 %93, i32 2)
  %95 = add nsw i32 %94, 12
  store i32 %95, i32* %5, align 4
  br label %110

96:                                               ; preds = %83
  %97 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %4, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @RATE_INFO_FLAGS_HE_MCS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ALIGN(i32 %106, i32 2)
  %108 = add nsw i32 %107, 12
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %96
  br label %110

110:                                              ; preds = %109, %92
  br label %111

111:                                              ; preds = %110, %80
  br label %153

112:                                              ; preds = %66, %59
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %119, 0
  br i1 %120, label %121, label %152

121:                                              ; preds = %112
  %122 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %3, align 8
  %123 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %121
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 3
  store i32 %134, i32* %5, align 4
  br label %151

135:                                              ; preds = %121
  %136 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %3, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @ALIGN(i32 %147, i32 2)
  %149 = add nsw i32 %148, 12
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %135
  br label %151

151:                                              ; preds = %150, %132
  br label %152

152:                                              ; preds = %151, %112
  br label %153

153:                                              ; preds = %152, %111
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
