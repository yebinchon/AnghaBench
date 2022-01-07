; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_get_frames.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_ieee80211_sta_ps_get_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i64, i64, %struct.sk_buff_head*, %struct.sk_buff_head*, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@ieee80211_ac_to_qos_mask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, i32, i32, i32, %struct.sk_buff_head*, i64*)* @ieee80211_sta_ps_get_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_ps_get_frames(%struct.sta_info* %0, i32 %1, i32 %2, i32 %3, %struct.sk_buff_head* %4, i64* %5) #0 {
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff_head*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ieee80211_sub_if_data*, align 8
  %14 = alloca %struct.ieee80211_local*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sk_buff_head* %4, %struct.sk_buff_head** %11, align 8
  store i64* %5, i64** %12, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  store %struct.ieee80211_sub_if_data* %20, %struct.ieee80211_sub_if_data** %13, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  store %struct.ieee80211_local* %23, %struct.ieee80211_local** %14, align 8
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %126, %6
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %129

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** @ieee80211_ac_to_qos_mask, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %126

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  %40 = call i64 @ieee80211_tids_for_ac(i32 %39)
  store i64 %40, i64* %16, align 8
  %41 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %42 = call i64 @skb_queue_empty(%struct.sk_buff_head* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %16, align 8
  %49 = and i64 %47, %48
  %50 = load i64*, i64** %12, align 8
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %49
  store i64 %52, i64* %50, align 8
  %53 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = and i64 %55, %56
  %58 = load i64*, i64** %12, align 8
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %57
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %44, %38
  %62 = load i64*, i64** %12, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %106, label %65

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %99, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %66
  %70 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 3
  %72 = load %struct.sk_buff_head*, %struct.sk_buff_head** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %72, i64 %74
  %76 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %75)
  store %struct.sk_buff* %76, %struct.sk_buff** %17, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %69
  %80 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 2
  %82 = load %struct.sk_buff_head*, %struct.sk_buff_head** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %82, i64 %84
  %86 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %17, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %79
  %90 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  %91 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %79
  br label %95

95:                                               ; preds = %94, %69
  %96 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %97 = icmp ne %struct.sk_buff* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %105

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %8, align 4
  %102 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %104 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %102, %struct.sk_buff* %103)
  br label %66

105:                                              ; preds = %98, %66
  br label %106

106:                                              ; preds = %105, %61
  %107 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 3
  %109 = load %struct.sk_buff_head*, %struct.sk_buff_head** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %109, i64 %111
  %113 = call i64 @skb_queue_empty(%struct.sk_buff_head* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %106
  %116 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %117 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %116, i32 0, i32 2
  %118 = load %struct.sk_buff_head*, %struct.sk_buff_head** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %118, i64 %120
  %122 = call i64 @skb_queue_empty(%struct.sk_buff_head* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %115, %106
  br label %129

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %37
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %24

129:                                              ; preds = %124, %24
  ret void
}

declare dso_local i64 @ieee80211_tids_for_ac(i32) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
