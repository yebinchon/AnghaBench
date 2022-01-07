; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_queue_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c_udp_queue_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, %struct.sk_buff* }

@SKB_SGO_CB_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @udp_queue_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_queue_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @udp_unexpected_gso(%struct.sock* %9, %struct.sk_buff* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @udp_queue_rcv_one_skb(%struct.sock* %18, %struct.sk_buff* %19)
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load i32, i32* @SKB_SGO_CB_OFFSET, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 4, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_mac_offset(%struct.sk_buff* %28)
  %30 = sub nsw i32 0, %29
  %31 = call i32 @__skb_push(%struct.sk_buff* %27, i32 %30)
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.sk_buff* @udp_rcv_segment(%struct.sock* %32, %struct.sk_buff* %33, i32 1)
  store %struct.sk_buff* %34, %struct.sk_buff** %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %5, align 8
  br label %36

36:                                               ; preds = %62, %21
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @skb_transport_offset(%struct.sk_buff* %44)
  %46 = call i32 @__skb_pull(%struct.sk_buff* %43, i32 %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @udp_queue_rcv_one_skb(%struct.sock* %47, %struct.sk_buff* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_net(i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @ip_protocol_deliver_rcu(i32 %56, %struct.sk_buff* %57, i32 %59)
  br label %61

61:                                               ; preds = %52, %39
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %5, align 8
  br label %36

64:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @udp_unexpected_gso(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @udp_queue_rcv_one_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_mac_offset(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @udp_rcv_segment(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @ip_protocol_deliver_rcu(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
