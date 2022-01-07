; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_h_multicast_ps_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_h_multicast_ps_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_data = type { %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ps_data }
%struct.ps_data = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.ps_data }
%struct.ieee80211_tx_info = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@TX_CONTINUE = common dso_local global i32 0, align 4
@QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@TOTAL_MAX_TX_BUFFER = common dso_local global i64 0, align 8
@AP_MAX_BC_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"BC TX buffer full - dropping the oldest frame\0A\00", align 1
@TX_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_data*)* @ieee80211_tx_h_multicast_ps_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_h_multicast_ps_buf(%struct.ieee80211_tx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_tx_data*, align 8
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ps_data*, align 8
  store %struct.ieee80211_tx_data* %0, %struct.ieee80211_tx_data** %3, align 8
  %7 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_12__* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %4, align 8
  %11 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %5, align 8
  %17 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %25, %1
  %35 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %42, i32* %2, align 4
  br label %174

43:                                               ; preds = %34
  %44 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store %struct.ps_data* %49, %struct.ps_data** %6, align 8
  br label %67

50:                                               ; preds = %25
  %51 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_15__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store %struct.ps_data* %63, %struct.ps_data** %6, align 8
  br label %66

64:                                               ; preds = %50
  %65 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %65, i32* %2, align 4
  br label %174

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ieee80211_has_order(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %74, i32* %2, align 4
  br label %174

75:                                               ; preds = %67
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ieee80211_is_probe_req(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %82, i32* %2, align 4
  br label %174

83:                                               ; preds = %75
  %84 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* @QUEUE_CONTROL, align 4
  %89 = call i64 @ieee80211_hw_check(i32* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %93 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %92, i32 0, i32 2
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %83
  %101 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %102 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %101, i32 0, i32 1
  %103 = call i32 @atomic_read(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %100
  %106 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %107 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %106, i32 0, i32 0
  %108 = call i64 @skb_queue_empty(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %111, i32* %2, align 4
  br label %174

112:                                              ; preds = %105, %100
  %113 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %114 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %115 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %119 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* @HOST_BROADCAST_PS_BUFFERING, align 4
  %123 = call i64 @ieee80211_hw_check(i32* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %112
  %126 = load i32, i32* @TX_CONTINUE, align 4
  store i32 %126, i32* %2, align 4
  br label %174

127:                                              ; preds = %112
  %128 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %128, i32 0, i32 1
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TOTAL_MAX_TX_BUFFER, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = call i32 @purge_old_ps_buffers(%struct.TYPE_13__* %138)
  br label %140

140:                                              ; preds = %135, %127
  %141 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %142 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %141, i32 0, i32 0
  %143 = call i64 @skb_queue_len(i32* %142)
  %144 = load i64, i64* @AP_MAX_BC_BUFFER, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %148 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %147, i32 0, i32 2
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = call i32 @ps_dbg(%struct.TYPE_14__* %149, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %151 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %152 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %156 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %155, i32 0, i32 0
  %157 = call i32 @skb_dequeue(i32* %156)
  %158 = call i32 @ieee80211_free_txskb(i32* %154, i32 %157)
  br label %166

159:                                              ; preds = %140
  %160 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %161 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %160, i32 0, i32 1
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %159, %146
  %167 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %168 = getelementptr inbounds %struct.ps_data, %struct.ps_data* %167, i32 0, i32 0
  %169 = load %struct.ieee80211_tx_data*, %struct.ieee80211_tx_data** %3, align 8
  %170 = getelementptr inbounds %struct.ieee80211_tx_data, %struct.ieee80211_tx_data* %169, i32 0, i32 0
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = call i32 @skb_queue_tail(i32* %168, %struct.TYPE_12__* %171)
  %173 = load i32, i32* @TX_QUEUED, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %166, %125, %110, %81, %73, %64, %41
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_12__*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_15__*) #1

declare dso_local i64 @ieee80211_has_order(i32) #1

declare dso_local i64 @ieee80211_is_probe_req(i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @purge_old_ps_buffers(%struct.TYPE_13__*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @ps_dbg(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @ieee80211_free_txskb(i32*, i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
