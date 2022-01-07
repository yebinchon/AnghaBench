; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_reorder_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_reorder_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_ampdu_rx = type { i32, %struct.sk_buff_head* }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_FLAG_AMSDU_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_ampdu_rx*, i32)* @ieee80211_rx_reorder_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_rx_reorder_ready(%struct.tid_ampdu_rx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tid_ampdu_rx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.tid_ampdu_rx* %0, %struct.tid_ampdu_rx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %4, align 8
  %10 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %9, i32 0, i32 1
  %11 = load %struct.sk_buff_head*, %struct.sk_buff_head** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %11, i64 %13
  store %struct.sk_buff_head* %14, %struct.sk_buff_head** %6, align 8
  %15 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %16 = call %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %4, align 8
  %18 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BIT_ULL(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %40

29:                                               ; preds = %25
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %30)
  store %struct.ieee80211_rx_status* %31, %struct.ieee80211_rx_status** %8, align 8
  %32 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RX_FLAG_AMSDU_MORE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %28, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.sk_buff* @skb_peek_tail(%struct.sk_buff_head*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
