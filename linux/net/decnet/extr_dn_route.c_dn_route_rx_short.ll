; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_rx_short.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_rx_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.dn_skb_cb = type { i8, i8*, i8* }

@NFPROTO_DECNET = common dso_local global i32 0, align 4
@NF_DN_PRE_ROUTING = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@dn_route_rx_packet = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dn_route_rx_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_route_rx_short(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dn_skb_cb*, align 8
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %6)
  store %struct.dn_skb_cb* %7, %struct.dn_skb_cb** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @skb_pull(%struct.sk_buff* %16, i32 5)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @skb_reset_transport_header(%struct.sk_buff* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %24 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %31 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 63
  %38 = trunc i32 %37 to i8
  %39 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %40 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %39, i32 0, i32 0
  store i8 %38, i8* %40, align 8
  %41 = load i32, i32* @NFPROTO_DECNET, align 4
  %42 = load i32, i32* @NF_DN_PRE_ROUTING, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @dn_route_rx_packet, align 4
  %48 = call i32 @NF_HOOK(i32 %41, i32 %42, i32* @init_net, i32* null, %struct.sk_buff* %43, i32 %46, i32* null, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %14
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32*, i32*, %struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
