; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32, i64 }
%struct.arphdr = type { i64, i32 }

@IFF_NOARP = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NFPROTO_ARP = common dso_local global i32 0, align 4
@NF_ARP_IN = common dso_local global i32 0, align 4
@arp_process = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @arp_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.arphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_NOARP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PACKET_OTHERHOST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PACKET_LOOPBACK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17, %4
  br label %72

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %79

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call i32 @arp_hdr_len(%struct.net_device* %39)
  %41 = call i32 @pskb_may_pull(%struct.sk_buff* %38, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %76

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %45)
  store %struct.arphdr* %46, %struct.arphdr** %10, align 8
  %47 = load %struct.arphdr*, %struct.arphdr** %10, align 8
  %48 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load %struct.arphdr*, %struct.arphdr** %10, align 8
  %56 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %44
  br label %76

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @NEIGH_CB(%struct.sk_buff* %61)
  %63 = call i32 @memset(i32 %62, i32 0, i32 4)
  %64 = load i32, i32* @NFPROTO_ARP, align 4
  %65 = load i32, i32* @NF_ARP_IN, align 4
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = call i32 @dev_net(%struct.net_device* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = load i32, i32* @arp_process, align 4
  %71 = call i32 @NF_HOOK(i32 %64, i32 %65, i32 %67, i32* null, %struct.sk_buff* %68, %struct.net_device* %69, i32* null, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %81

72:                                               ; preds = %29
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @consume_skb(%struct.sk_buff* %73)
  %75 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %59, %43
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %76, %36
  %80 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %72, %60
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @arp_hdr_len(%struct.net_device*) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @NEIGH_CB(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32*, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
