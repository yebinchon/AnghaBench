; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_rcv_spkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_rcv_spkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.packet_type = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.sockaddr_pkt = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sockaddr_pkt }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @packet_rcv_spkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_rcv_spkt(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sockaddr_pkt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %12 = load %struct.packet_type*, %struct.packet_type** %8, align 8
  %13 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PACKET_LOOPBACK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %76

21:                                               ; preds = %4
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call i32 @dev_net(%struct.net_device* %22)
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = call i32 @sock_net(%struct.sock* %24)
  %26 = call i32 @net_eq(i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %76

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %79

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_dst_drop(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @nf_reset_ct(%struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call %struct.TYPE_4__* @PACKET_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.sockaddr_pkt* %44, %struct.sockaddr_pkt** %11, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i64 @skb_mac_header(%struct.sk_buff* %49)
  %51 = sub nsw i64 %48, %50
  %52 = call i32 @skb_push(%struct.sk_buff* %45, i64 %51)
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %57 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %59 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strlcpy(i32 %60, i32 %63, i32 4)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %69 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sock*, %struct.sock** %10, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i64 @sock_queue_rcv_skb(%struct.sock* %70, %struct.sk_buff* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %80

75:                                               ; preds = %36
  br label %76

76:                                               ; preds = %75, %28, %20
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %79

79:                                               ; preds = %76, %35
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @PACKET_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
