; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32, %struct.iphdr }
%struct.iphdr = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipgre_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %8)
  store %struct.ip_tunnel* %9, %struct.ip_tunnel** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @pskb_inet_may_pull(%struct.sk_buff* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %94

14:                                               ; preds = %2
  %15 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gre_fb_xmit(%struct.sk_buff* %20, %struct.net_device* %21, i32 %24)
  %26 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %103

27:                                               ; preds = %14
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 4
  %41 = sub i64 %36, %40
  %42 = call i64 @skb_cow_head(%struct.sk_buff* %33, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %94

45:                                               ; preds = %32
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.iphdr*
  store %struct.iphdr* %49, %struct.iphdr** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 4
  %55 = call i32 @skb_pull(%struct.sk_buff* %50, i64 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @skb_reset_mac_header(%struct.sk_buff* %56)
  br label %70

58:                                               ; preds = %27
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @skb_cow_head(%struct.sk_buff* %59, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %94

66:                                               ; preds = %58
  %67 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store %struct.iphdr* %69, %struct.iphdr** %7, align 8
  br label %70

70:                                               ; preds = %66, %45
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %73 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TUNNEL_CSUM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @gre_handle_offloads(%struct.sk_buff* %71, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %94

85:                                               ; preds = %70
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @__gre_xmit(%struct.sk_buff* %86, %struct.net_device* %87, %struct.iphdr* %88, i32 %91)
  %93 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %103

94:                                               ; preds = %84, %65, %44, %13
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %85, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pskb_inet_may_pull(%struct.sk_buff*) #1

declare dso_local i32 @gre_fb_xmit(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @gre_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @__gre_xmit(%struct.sk_buff*, %struct.net_device*, %struct.iphdr*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
