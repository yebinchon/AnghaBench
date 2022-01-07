; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.net_device* }
%struct.packet_type = type { i32 }
%struct.net_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }

@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8
@PACKET_OTHERHOST = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @lowpan_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PACKET_OTHERHOST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @lowpan_rx_h_check(%struct.sk_buff* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %16, %4
  br label %73

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %10, align 8
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.net_device*, %struct.net_device** %10, align 8
  %37 = call i32 @netif_running(%struct.net_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %27
  br label %73

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %76

47:                                               ; preds = %40
  %48 = load %struct.net_device*, %struct.net_device** %10, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32* @skb_network_header(%struct.sk_buff* %51)
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @lowpan_is_frag1(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32* @skb_network_header(%struct.sk_buff* %57)
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @lowpan_is_iphc(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56, %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %63, i32 %64)
  store %struct.sk_buff* %65, %struct.sk_buff** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = icmp ne %struct.sk_buff* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %76

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = call i32 @lowpan_invoke_rx_handlers(%struct.sk_buff* %71)
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %39, %26
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @kfree_skb(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73, %68, %46
  %77 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @lowpan_rx_h_check(%struct.sk_buff*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @lowpan_is_frag1(i32) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @lowpan_is_iphc(i32) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @lowpan_invoke_rx_handlers(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
