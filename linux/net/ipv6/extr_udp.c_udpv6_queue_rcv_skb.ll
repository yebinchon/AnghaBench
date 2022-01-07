; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udpv6_queue_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udpv6_queue_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @udpv6_queue_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udpv6_queue_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
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
  %20 = call i32 @udpv6_queue_rcv_one_skb(%struct.sock* %18, %struct.sk_buff* %19)
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @skb_mac_offset(%struct.sk_buff* %23)
  %25 = sub nsw i32 0, %24
  %26 = call i32 @__skb_push(%struct.sk_buff* %22, i32 %25)
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.sk_buff* @udp_rcv_segment(%struct.sock* %27, %struct.sk_buff* %28, i32 0)
  store %struct.sk_buff* %29, %struct.sk_buff** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  br label %31

31:                                               ; preds = %56, %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_transport_offset(%struct.sk_buff* %39)
  %41 = call i32 @__skb_pull(%struct.sk_buff* %38, i32 %40)
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @udpv6_queue_rcv_one_skb(%struct.sock* %42, %struct.sk_buff* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_net(i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ip6_protocol_deliver_rcu(i32 %51, %struct.sk_buff* %52, i32 %53, i32 1)
  br label %55

55:                                               ; preds = %47, %34
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %5, align 8
  br label %31

58:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @udp_unexpected_gso(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @udpv6_queue_rcv_one_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_mac_offset(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @udp_rcv_segment(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @ip6_protocol_deliver_rcu(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
