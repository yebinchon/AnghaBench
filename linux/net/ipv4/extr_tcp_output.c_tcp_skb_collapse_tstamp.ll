; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_skb_collapse_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_skb_collapse_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type opaque
%struct.skb_shared_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SKBTX_ANY_TSTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_skb_collapse_tstamp(%struct.sk_buff* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.skb_shared_info*, align 8
  %6 = alloca %struct.skb_shared_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i32 @tcp_has_tx_tstamp(%struct.sk_buff* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i8* @skb_shinfo(%struct.sk_buff* %12)
  %14 = bitcast i8* %13 to %struct.skb_shared_info*
  store %struct.skb_shared_info* %14, %struct.skb_shared_info** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call i8* @skb_shinfo(%struct.sk_buff* %15)
  %17 = bitcast i8* %16 to %struct.skb_shared_info*
  store %struct.skb_shared_info* %17, %struct.skb_shared_info** %6, align 8
  %18 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %19 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SKBTX_ANY_TSTAMP, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %24 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %28 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.skb_shared_info*, %struct.skb_shared_info** %6, align 8
  %31 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %11, %2
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_has_tx_tstamp(%struct.sk_buff*) #1

declare dso_local i8* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
