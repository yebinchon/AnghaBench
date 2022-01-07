; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_rx_long.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_rx_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.dn_skb_cb = type { i32, i8*, i8* }

@dn_hiord_addr = common dso_local global i32 0, align 4
@NFPROTO_DECNET = common dso_local global i32 0, align 4
@NF_DN_PRE_ROUTING = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@dn_route_rx_packet = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @dn_route_rx_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_route_rx_long(%struct.sk_buff* %0) #0 {
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
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i32 21)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @skb_pull(%struct.sk_buff* %16, i32 20)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @skb_reset_transport_header(%struct.sk_buff* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @dn_eth2dn(i8* %22)
  %24 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %25 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @dn_hiord_addr, align 4
  %28 = call i64 @memcmp(i8* %26, i32 %27, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %64

31:                                               ; preds = %15
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 6
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @dn_eth2dn(i8* %36)
  %38 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %39 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @dn_hiord_addr, align 4
  %42 = call i64 @memcmp(i8* %40, i32 %41, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %64

45:                                               ; preds = %31
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 6
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i32
  %54 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %4, align 8
  %55 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @NFPROTO_DECNET, align 4
  %57 = load i32, i32* @NF_DN_PRE_ROUTING, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @dn_route_rx_packet, align 4
  %63 = call i32 @NF_HOOK(i32 %56, i32 %57, i32* @init_net, i32* null, %struct.sk_buff* %58, i32 %61, i32* null, i32 %62)
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %44, %30, %14
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i32 @kfree_skb(%struct.sk_buff* %65)
  %67 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %45
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i8* @dn_eth2dn(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32*, i32*, %struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
