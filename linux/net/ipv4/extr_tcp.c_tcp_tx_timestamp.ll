; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.skb_shared_info = type { i64, i32 }
%struct.tcp_skb_cb = type { i32, i64 }

@SOF_TIMESTAMPING_TX_ACK = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_RECORD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_tx_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_tx_timestamp(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.skb_shared_info*, align 8
  %7 = alloca %struct.tcp_skb_cb*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %16)
  store %struct.skb_shared_info* %17, %struct.skb_shared_info** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %18)
  store %struct.tcp_skb_cb* %19, %struct.tcp_skb_cb** %7, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %23 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %22, i32 0, i32 1
  %24 = call i32 @sock_tx_timestamp(%struct.sock* %20, i32 %21, i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SOF_TIMESTAMPING_TX_ACK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %7, align 8
  %31 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %15
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SOF_TIMESTAMPING_TX_RECORD_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = sub nsw i64 %45, 1
  %47 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %48 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %37, %32
  br label %50

50:                                               ; preds = %49, %12, %2
  ret void
}

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @sock_tx_timestamp(%struct.sock*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
