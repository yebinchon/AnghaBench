; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_sta_reorder_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_sta_reorder_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32, i64*, i32, i64, i32*, i32 }
%struct.sk_buff_head = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HT_RX_REORDER_BUF_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"release an RX reorder frame due to timeout on earlier frames\0A\00", align 1
@IEEE80211_SN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, %struct.sk_buff_head*)* @ieee80211_sta_reorder_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_reorder_release(%struct.ieee80211_sub_if_data* %0, %struct.tid_ampdu_rx* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.tid_ampdu_rx*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.tid_ampdu_rx* %1, %struct.tid_ampdu_rx** %5, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %6, align 8
  %11 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %12 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %11, i32 0, i32 7
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %15 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %18 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %117, label %25

25:                                               ; preds = %3
  %26 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %27 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %34 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %32, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %109, %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %116

41:                                               ; preds = %37
  %42 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %109

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* @jiffies, align 4
  %54 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %55 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HT_RX_REORDER_BUF_TIMEOUT, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @time_after(i32 %53, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  br label %174

66:                                               ; preds = %52, %49
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %70 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %68, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %85, %66
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %79 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @__skb_queue_purge(i32* %83)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %89 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = srem i32 %87, %90
  store i32 %91, i32* %8, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %94 = call i32 @ht_dbg_ratelimited(%struct.ieee80211_sub_if_data* %93, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %96 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %99 = call i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data* %95, %struct.tid_ampdu_rx* %96, i32 %97, %struct.sk_buff_head* %98)
  %100 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %101 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @IEEE80211_SN_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %108 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %92, %46
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %113 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = srem i32 %111, %114
  store i32 %115, i32* %9, align 4
  br label %37

116:                                              ; preds = %37
  br label %137

117:                                              ; preds = %25, %3
  br label %118

118:                                              ; preds = %123, %117
  %119 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i64 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %118
  %124 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %125 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %128 = call i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data* %124, %struct.tid_ampdu_rx* %125, i32 %126, %struct.sk_buff_head* %127)
  %129 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %130 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %133 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = srem i32 %131, %134
  store i32 %135, i32* %7, align 4
  br label %118

136:                                              ; preds = %118
  br label %137

137:                                              ; preds = %136, %116
  %138 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %139 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %194

142:                                              ; preds = %137
  %143 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %144 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %147 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = srem i32 %145, %148
  store i32 %149, i32* %7, align 4
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %166, %142
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %152, 1
  %154 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %155 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %153, %156
  %158 = icmp ne i32 %151, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %150
  %160 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %173

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  %169 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %170 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = srem i32 %168, %171
  store i32 %172, i32* %9, align 4
  br label %150

173:                                              ; preds = %164, %150
  br label %174

174:                                              ; preds = %173, %65
  %175 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %176 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %193, label %179

179:                                              ; preds = %174
  %180 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %181 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %180, i32 0, i32 2
  %182 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %183 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %182, i32 0, i32 3
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  %190 = load i64, i64* @HT_RX_REORDER_BUF_TIMEOUT, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @mod_timer(i32* %181, i64 %191)
  br label %193

193:                                              ; preds = %179, %174
  br label %198

194:                                              ; preds = %137
  %195 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %5, align 8
  %196 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %195, i32 0, i32 2
  %197 = call i32 @del_timer(i32* %196)
  br label %198

198:                                              ; preds = %194, %193
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx*, i32) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @ht_dbg_ratelimited(%struct.ieee80211_sub_if_data*, i8*) #1

declare dso_local i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
