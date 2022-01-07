; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_gso_features_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_gso_features_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i64, i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@SKB_GSO_PARTIAL = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@NETIF_F_TSO_MANGLEID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @gso_features_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gso_features_check(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SKB_GSO_PARTIAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %24
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call %struct.iphdr* @inner_ip_hdr(%struct.sk_buff* %53)
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi %struct.iphdr* [ %54, %52 ], [ %57, %55 ]
  store %struct.iphdr* %59, %struct.iphdr** %9, align 8
  %60 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IP_DF, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %67, %58
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @inner_ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
