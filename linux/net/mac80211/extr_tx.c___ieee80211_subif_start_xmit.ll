; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_subif_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_subif_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, %struct.sk_buff*, i32*, i32, i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sta_info = type { i64, i64, %struct.sta_info*, i32*, i32, i32 }
%struct.ieee80211_fast_tx = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ieee80211_subif_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.sta_info*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_fast_tx*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %16)
  store %struct.ieee80211_sub_if_data* %17, %struct.ieee80211_sub_if_data** %9, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ETH_HLEN, align 8
  %25 = icmp slt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = bitcast %struct.sk_buff* %30 to %struct.sta_info*
  %32 = call i32 @kfree_skb(%struct.sta_info* %31)
  br label %192

33:                                               ; preds = %4
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = bitcast %struct.sk_buff* %36 to %struct.sta_info*
  %38 = call i64 @ieee80211_lookup_ra_sta(%struct.ieee80211_sub_if_data* %35, %struct.sta_info* %37, %struct.sta_info** %11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %186

41:                                               ; preds = %33
  %42 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %43 = call i64 @IS_ERR(%struct.sta_info* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store %struct.sta_info* null, %struct.sta_info** %11, align 8
  br label %46

46:                                               ; preds = %45, %41
  %47 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %48 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %55 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = bitcast %struct.sk_buff* %56 to %struct.sta_info*
  %58 = call i32 @__ieee80211_select_queue(%struct.ieee80211_sub_if_data* %54, %struct.sta_info* %55, %struct.sta_info* %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = bitcast %struct.sk_buff* %59 to %struct.sta_info*
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @skb_set_queue_mapping(%struct.sta_info* %60, i32 %61)
  br label %63

63:                                               ; preds = %53, %46
  %64 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %65 = icmp ne %struct.sta_info* %64, null
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 0
  %72 = load %struct.ieee80211_local*, %struct.ieee80211_local** %71, align 8
  %73 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sk_pacing_shift_update(i32 %69, i32 %75)
  %77 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %78 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.ieee80211_fast_tx* @rcu_dereference(i32 %79)
  store %struct.ieee80211_fast_tx* %80, %struct.ieee80211_fast_tx** %14, align 8
  %81 = load %struct.ieee80211_fast_tx*, %struct.ieee80211_fast_tx** %14, align 8
  %82 = icmp ne %struct.ieee80211_fast_tx* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %66
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %85 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %86 = load %struct.ieee80211_fast_tx*, %struct.ieee80211_fast_tx** %14, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = bitcast %struct.sk_buff* %87 to %struct.sta_info*
  %89 = call i64 @ieee80211_xmit_fast(%struct.ieee80211_sub_if_data* %84, %struct.sta_info* %85, %struct.ieee80211_fast_tx* %86, %struct.sta_info* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %190

92:                                               ; preds = %83, %66
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = bitcast %struct.sk_buff* %94 to %struct.sta_info*
  %96 = call i64 @skb_is_gso(%struct.sta_info* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = bitcast %struct.sk_buff* %99 to %struct.sta_info*
  %101 = call %struct.sta_info* @skb_gso_segment(%struct.sta_info* %100, i32 0)
  %102 = bitcast %struct.sta_info* %101 to %struct.sk_buff*
  store %struct.sk_buff* %102, %struct.sk_buff** %15, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %104 = bitcast %struct.sk_buff* %103 to %struct.sta_info*
  %105 = call i64 @IS_ERR(%struct.sta_info* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %186

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %110 = icmp ne %struct.sk_buff* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = bitcast %struct.sk_buff* %112 to %struct.sta_info*
  %114 = call i32 @consume_skb(%struct.sta_info* %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %5, align 8
  br label %116

116:                                              ; preds = %111, %108
  br label %117

117:                                              ; preds = %116
  br label %147

118:                                              ; preds = %93
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = bitcast %struct.sk_buff* %119 to %struct.sta_info*
  %121 = call i64 @skb_linearize(%struct.sta_info* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = bitcast %struct.sk_buff* %124 to %struct.sta_info*
  %126 = call i32 @kfree_skb(%struct.sta_info* %125)
  br label %190

127:                                              ; preds = %118
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = bitcast %struct.sk_buff* %134 to %struct.sta_info*
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = bitcast %struct.sk_buff* %136 to %struct.sta_info*
  %138 = call i32 @skb_checksum_start_offset(%struct.sta_info* %137)
  %139 = call i32 @skb_set_transport_header(%struct.sta_info* %135, i32 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = bitcast %struct.sk_buff* %140 to %struct.sta_info*
  %142 = call i64 @skb_checksum_help(%struct.sta_info* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %186

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %127
  br label %147

147:                                              ; preds = %146, %117
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %148, %struct.sk_buff** %12, align 8
  br label %149

149:                                              ; preds = %174, %147
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = icmp ne %struct.sk_buff* %150, null
  br i1 %151, label %152, label %185

152:                                              ; preds = %149
  %153 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %153, %struct.sk_buff** %5, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 2
  %156 = load %struct.sk_buff*, %struct.sk_buff** %155, align 8
  store %struct.sk_buff* %156, %struct.sk_buff** %12, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 3
  store i32* null, i32** %158, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %160, align 8
  %161 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = bitcast %struct.sk_buff* %162 to %struct.sta_info*
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call %struct.sta_info* @ieee80211_build_hdr(%struct.ieee80211_sub_if_data* %161, %struct.sta_info* %163, i32 %164, %struct.sta_info* %165, i32 %166)
  %168 = bitcast %struct.sta_info* %167 to %struct.sk_buff*
  store %struct.sk_buff* %168, %struct.sk_buff** %5, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = bitcast %struct.sk_buff* %169 to %struct.sta_info*
  %171 = call i64 @IS_ERR(%struct.sta_info* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %152
  br label %190

174:                                              ; preds = %152
  %175 = load %struct.net_device*, %struct.net_device** %6, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @ieee80211_tx_stats(%struct.net_device* %175, i64 %178)
  %180 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %181 = load %struct.sta_info*, %struct.sta_info** %11, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = bitcast %struct.sk_buff* %182 to %struct.sta_info*
  %184 = call i32 @ieee80211_xmit(%struct.ieee80211_sub_if_data* %180, %struct.sta_info* %181, %struct.sta_info* %183, i32 0)
  br label %149

185:                                              ; preds = %149
  br label %190

186:                                              ; preds = %144, %107, %40
  %187 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %188 = bitcast %struct.sk_buff* %187 to %struct.sta_info*
  %189 = call i32 @kfree_skb(%struct.sta_info* %188)
  br label %190

190:                                              ; preds = %186, %185, %173, %123, %91
  %191 = call i32 (...) @rcu_read_unlock()
  br label %192

192:                                              ; preds = %190, %29
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sta_info*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @ieee80211_lookup_ra_sta(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.sta_info**) #1

declare dso_local i64 @IS_ERR(%struct.sta_info*) #1

declare dso_local i32 @__ieee80211_select_queue(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.sta_info*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sta_info*, i32) #1

declare dso_local i32 @sk_pacing_shift_update(i32, i32) #1

declare dso_local %struct.ieee80211_fast_tx* @rcu_dereference(i32) #1

declare dso_local i64 @ieee80211_xmit_fast(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee80211_fast_tx*, %struct.sta_info*) #1

declare dso_local i64 @skb_is_gso(%struct.sta_info*) #1

declare dso_local %struct.sta_info* @skb_gso_segment(%struct.sta_info*, i32) #1

declare dso_local i32 @consume_skb(%struct.sta_info*) #1

declare dso_local i64 @skb_linearize(%struct.sta_info*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sta_info*, i32) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sta_info*) #1

declare dso_local i64 @skb_checksum_help(%struct.sta_info*) #1

declare dso_local %struct.sta_info* @ieee80211_build_hdr(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, %struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_tx_stats(%struct.net_device*, i64) #1

declare dso_local i32 @ieee80211_xmit(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.sta_info*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
