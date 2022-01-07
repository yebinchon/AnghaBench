; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_sta_manage_reorder_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_sta_manage_reorder_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32, i32, i32, i64, i32, i32*, i32* }
%struct.sk_buff = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@RX_FLAG_AMSDU_MORE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, %struct.sk_buff*, %struct.sk_buff_head*)* @ieee80211_sta_manage_reorder_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_sta_manage_reorder_buf(%struct.ieee80211_sub_if_data* %0, %struct.tid_ampdu_rx* %1, %struct.sk_buff* %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.tid_ampdu_rx*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.tid_ampdu_rx* %1, %struct.tid_ampdu_rx** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %20, %struct.ieee80211_hdr** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %21)
  store %struct.ieee80211_rx_status* %22, %struct.ieee80211_rx_status** %10, align 8
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 4
  store i32 %30, i32* %12, align 4
  store i32 1, i32* %16, align 4
  %31 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %32 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %31, i32 0, i32 6
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %35 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %4
  %40 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %41 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %44 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %47 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %39, %4
  %49 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %50 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %53 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %56 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %48
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i64 @ieee80211_sn_less(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %16, align 4
  br label %170

69:                                               ; preds = %63
  %70 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %71 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %70, i32 0, i32 4
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %48
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @ieee80211_sn_less(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i32 @dev_kfree_skb(%struct.sk_buff* %78)
  br label %170

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i64 @ieee80211_sn_less(i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @ieee80211_sn_sub(i32 %88, i32 %89)
  %91 = call i8* @ieee80211_sn_inc(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %13, align 4
  %93 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %94 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %97 = call i32 @ieee80211_release_reorder_frames(%struct.ieee80211_sub_if_data* %93, %struct.tid_ampdu_rx* %94, i32 %95, %struct.sk_buff_head* %96)
  br label %98

98:                                               ; preds = %87, %80
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %101 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = srem i32 %99, %102
  store i32 %103, i32* %15, align 4
  %104 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i64 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = call i32 @dev_kfree_skb(%struct.sk_buff* %109)
  br label %170

111:                                              ; preds = %98
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %114 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %111
  %118 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %119 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %124 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RX_FLAG_AMSDU_MORE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %122
  %130 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %131 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @ieee80211_sn_inc(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %136 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %129, %122
  store i32 0, i32* %16, align 4
  br label %170

138:                                              ; preds = %117, %111
  %139 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %140 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %139, i32 0, i32 8
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = call i32 @__skb_queue_tail(i32* %144, %struct.sk_buff* %145)
  %147 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %148 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @RX_FLAG_AMSDU_MORE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %169, label %153

153:                                              ; preds = %138
  %154 = load i32, i32* @jiffies, align 4
  %155 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %156 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %154, i32* %160, align 4
  %161 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %162 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %166 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %167 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %168 = call i32 @ieee80211_sta_reorder_release(%struct.ieee80211_sub_if_data* %165, %struct.tid_ampdu_rx* %166, %struct.sk_buff_head* %167)
  br label %169

169:                                              ; preds = %153, %138
  br label %170

170:                                              ; preds = %169, %137, %108, %77, %68
  %171 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %172 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %171, i32 0, i32 6
  %173 = call i32 @spin_unlock(i32* %172)
  %174 = load i32, i32* %16, align 4
  ret i32 %174
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ieee80211_sn_less(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @ieee80211_sn_inc(i32) #1

declare dso_local i32 @ieee80211_sn_sub(i32, i32) #1

declare dso_local i32 @ieee80211_release_reorder_frames(%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, i32, %struct.sk_buff_head*) #1

declare dso_local i64 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_sta_reorder_release(%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
