; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c___cleanup_single_sta.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c___cleanup_single_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_11__, i32, i32*, i32*, %struct.TYPE_10__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_11__ = type { i32*, %struct.tid_ampdu_tx** }
%struct.tid_ampdu_tx = type { i32 }
%struct.TYPE_10__ = type { i64* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_12__, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.ieee80211_local* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ps_data }
%struct.ps_data = type { i32 }
%struct.TYPE_7__ = type { %struct.ps_data }
%struct.ieee80211_local = type { i32, i32 }
%struct.txq_info = type { i32 }

@WLAN_STA_PS_STA = common dso_local global i32 0, align 4
@WLAN_STA_PS_DRIVER = common dso_local global i32 0, align 4
@WLAN_STA_PS_DELIVER = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @__cleanup_single_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cleanup_single_sta(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tid_ampdu_tx*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ps_data*, align 8
  %9 = alloca %struct.txq_info*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 5
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %6, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 3
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %7, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %17 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %18 = call i64 @test_sta_flag(%struct.sta_info* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %22 = load i32, i32* @WLAN_STA_PS_DRIVER, align 4
  %23 = call i64 @test_sta_flag(%struct.sta_info* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %27 = load i32, i32* @WLAN_STA_PS_DELIVER, align 4
  %28 = call i64 @test_sta_flag(%struct.sta_info* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %25, %20, %1
  %31 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 5
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 5
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %41, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39, %30
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store %struct.ps_data* %52, %struct.ps_data** %8, align 8
  br label %65

53:                                               ; preds = %39
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %54, i32 0, i32 0
  %56 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_12__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store %struct.ps_data* %62, %struct.ps_data** %8, align 8
  br label %64

63:                                               ; preds = %53
  br label %212

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %48
  %66 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %67 = load i32, i32* @WLAN_STA_PS_STA, align 4
  %68 = call i32 @clear_sta_flag(%struct.sta_info* %66, i32 %67)
  %69 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %70 = load i32, i32* @WLAN_STA_PS_DRIVER, align 4
  %71 = call i32 @clear_sta_flag(%struct.sta_info* %69, i32 %70)
  %72 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %73 = load i32, i32* @WLAN_STA_PS_DELIVER, align 4
  %74 = call i32 @clear_sta_flag(%struct.sta_info* %72, i32 %73)
  %75 = load %struct.ps_data*, %struct.ps_data** %8, align 8
  %76 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %75, i32 0, i32 0
  %77 = call i32 @atomic_dec(i32* %76)
  br label %78

78:                                               ; preds = %65, %25
  %79 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %80 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %123

86:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %119, %86
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = call i32 @ARRAY_SIZE(i64* %92)
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %87
  %96 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %97 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  br label %119

106:                                              ; preds = %95
  %107 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %108 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call %struct.txq_info* @to_txq_info(i64 %114)
  store %struct.txq_info* %115, %struct.txq_info** %9, align 8
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %117 = load %struct.txq_info*, %struct.txq_info** %9, align 8
  %118 = call i32 @ieee80211_txq_purge(%struct.ieee80211_local* %116, %struct.txq_info* %117)
  br label %119

119:                                              ; preds = %106, %105
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %87

122:                                              ; preds = %87
  br label %123

123:                                              ; preds = %122, %78
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %160, %123
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %163

128:                                              ; preds = %124
  %129 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i64 @skb_queue_len(i32* %134)
  %136 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 4
  %142 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %143 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %142, i32 0, i32 0
  %144 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %145 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 @ieee80211_purge_tx_queue(i32* %143, i32* %149)
  %151 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %152 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %151, i32 0, i32 0
  %153 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %154 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i32 @ieee80211_purge_tx_queue(i32* %152, i32* %158)
  br label %160

160:                                              ; preds = %128
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %124

163:                                              ; preds = %124
  %164 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %165 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %164, i32 0, i32 0
  %166 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_12__* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %170 = call i32 @mesh_sta_cleanup(%struct.sta_info* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %173 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %172, i32 0, i32 1
  %174 = call i32 @cancel_work_sync(i32* %173)
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %209, %171
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %212

179:                                              ; preds = %175
  %180 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %181 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load %struct.tid_ampdu_tx**, %struct.tid_ampdu_tx*** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %183, i64 %185
  %187 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %186, align 8
  %188 = call i32 @kfree(%struct.tid_ampdu_tx* %187)
  %189 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %190 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.tid_ampdu_tx* @rcu_dereference_raw(i32 %196)
  store %struct.tid_ampdu_tx* %197, %struct.tid_ampdu_tx** %5, align 8
  %198 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %5, align 8
  %199 = icmp ne %struct.tid_ampdu_tx* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %179
  br label %209

201:                                              ; preds = %179
  %202 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %203 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %202, i32 0, i32 0
  %204 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %5, align 8
  %205 = getelementptr inbounds %struct.tid_ampdu_tx, %struct.tid_ampdu_tx* %204, i32 0, i32 0
  %206 = call i32 @ieee80211_purge_tx_queue(i32* %203, i32* %205)
  %207 = load %struct.tid_ampdu_tx*, %struct.tid_ampdu_tx** %5, align 8
  %208 = call i32 @kfree(%struct.tid_ampdu_tx* %207)
  br label %209

209:                                              ; preds = %201, %200
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %4, align 4
  br label %175

212:                                              ; preds = %63, %175
  ret void
}

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_12__*) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local %struct.txq_info* @to_txq_info(i64) #1

declare dso_local i32 @ieee80211_txq_purge(%struct.ieee80211_local*, %struct.txq_info*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @ieee80211_purge_tx_queue(i32*, i32*) #1

declare dso_local i32 @mesh_sta_cleanup(%struct.sta_info*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.tid_ampdu_tx*) #1

declare dso_local %struct.tid_ampdu_tx* @rcu_dereference_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
