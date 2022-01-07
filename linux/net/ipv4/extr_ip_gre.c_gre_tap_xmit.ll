; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_tap_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gre_tap_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@ETH_P_TEB = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @gre_tap_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_tap_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %7)
  store %struct.ip_tunnel* %8, %struct.ip_tunnel** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @pskb_inet_may_pull(%struct.sk_buff* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32, i32* @ETH_P_TEB, align 4
  %22 = call i32 @htons(i32 %21)
  %23 = call i32 @gre_fb_xmit(%struct.sk_buff* %19, %struct.net_device* %20, i32 %22)
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %13
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TUNNEL_CSUM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @gre_handle_offloads(%struct.sk_buff* %26, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %58

40:                                               ; preds = %25
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @skb_cow_head(%struct.sk_buff* %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %58

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* @ETH_P_TEB, align 4
  %55 = call i32 @htons(i32 %54)
  %56 = call i32 @__gre_xmit(%struct.sk_buff* %49, %struct.net_device* %50, i32* %53, i32 %55)
  %57 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %67

58:                                               ; preds = %47, %39, %12
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %58, %48, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pskb_inet_may_pull(%struct.sk_buff*) #1

declare dso_local i32 @gre_fb_xmit(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @gre_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @__gre_xmit(%struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
