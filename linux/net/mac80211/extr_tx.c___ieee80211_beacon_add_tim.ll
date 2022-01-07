; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_beacon_add_tim.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_beacon_add_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ps_data = type { i32, i32, i64*, i32, i32 }
%struct.sk_buff = type { i32 }

@IEEE80211_MAX_AID = common dso_local global i64 0, align 8
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@IEEE80211_MAX_TIM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ps_data*, %struct.sk_buff*, i32)* @__ieee80211_beacon_add_tim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %0, %struct.ps_data* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ps_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ps_data* %1, %struct.ps_data** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %17 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %16, i32 0, i32 4
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %22 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @IEEE80211_MAX_AID, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @bitmap_empty(i64* %23, i64 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %20, %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %30
  %34 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %35 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %46 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %52

47:                                               ; preds = %33
  %48 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %49 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %38
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32* @skb_put(%struct.sk_buff* %54, i32 6)
  store i32* %55, i32** %9, align 8
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* @WLAN_EID_TIM, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %9, align 8
  store i32 4, i32* %59, align 4
  %61 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %62 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %73 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %74 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %53
  %78 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %79 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %78, i32 0, i32 3
  %80 = call i32 @skb_queue_empty(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %77, %53
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %88 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %164

91:                                               ; preds = %83
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %109, %91
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @IEEE80211_MAX_TIM_LEN, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %98 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %12, align 4
  %107 = and i32 %106, 254
  store i32 %107, i32* %14, align 4
  br label %112

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %92

112:                                              ; preds = %105, %92
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* @IEEE80211_MAX_TIM_LEN, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %132, %112
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %122 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %15, align 4
  br label %135

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %12, align 4
  br label %116

135:                                              ; preds = %129, %116
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %136, %137
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %9, align 8
  store i32 %138, i32* %139, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = sub nsw i32 %142, %143
  %145 = call i32* @skb_put(%struct.sk_buff* %141, i32 %144)
  %146 = load i32*, i32** %9, align 8
  %147 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %148 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sub nsw i32 %153, %154
  %156 = add nsw i32 %155, 1
  %157 = call i32 @memcpy(i32* %146, i64* %152, i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %158, %159
  %161 = add nsw i32 %160, 4
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %161, i32* %163, align 4
  br label %170

164:                                              ; preds = %83
  %165 = load i32, i32* %11, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %9, align 8
  store i32 %165, i32* %166, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %9, align 8
  store i32 0, i32* %168, align 4
  br label %170

170:                                              ; preds = %164, %135
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bitmap_empty(i64*, i64) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
