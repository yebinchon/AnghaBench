; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.wpan_dev = type { i32 }
%struct.ieee802154_mac_cb = type { i32, i32 }
%struct.lowpan_addr_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wpan_dev* }

@IEEE802154_FC_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i64*, i64*)* @lowpan_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_header(%struct.sk_buff* %0, %struct.net_device* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.wpan_dev*, align 8
  %10 = alloca %struct.ieee802154_mac_cb*, align 8
  %11 = alloca %struct.lowpan_addr_info, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_7__* @lowpan_802154_dev(%struct.net_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.wpan_dev*, %struct.wpan_dev** %16, align 8
  store %struct.wpan_dev* %17, %struct.wpan_dev** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.ieee802154_mac_cb* @mac_cb_init(%struct.sk_buff* %18)
  store %struct.ieee802154_mac_cb* %19, %struct.ieee802154_mac_cb** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call i32 @lowpan_skb_priv(%struct.sk_buff* %20)
  %22 = call i32 @memcpy(%struct.lowpan_addr_info* %11, i32 %21, i32 24)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %11, i32 0, i32 1
  %30 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %11, i32 0, i32 0
  %31 = call i32 @lowpan_header_compress(%struct.sk_buff* %27, %struct.net_device* %28, %struct.TYPE_6__* %29, i32* %30)
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @skb_network_header_len(%struct.sk_buff* %38)
  %40 = add nsw i64 %37, %39
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @IEEE802154_FC_TYPE_DATA, align 4
  %43 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %10, align 8
  %44 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %11, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IEEE802154_ADDR_SHORT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %4
  %51 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %11, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ieee802154_is_broadcast_short_addr(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %10, align 8
  %58 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %65

59:                                               ; preds = %50, %4
  %60 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %61 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %10, align 8
  %64 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call %struct.TYPE_7__* @lowpan_802154_dev(%struct.net_device* %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %11, i32 0, i32 1
  %72 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %11, i32 0, i32 0
  %73 = call i32 @wpan_dev_hard_header(%struct.sk_buff* %66, %struct.TYPE_5__* %70, %struct.TYPE_6__* %71, i32* %72, i32 0)
  ret i32 %73
}

declare dso_local %struct.TYPE_7__* @lowpan_802154_dev(%struct.net_device*) #1

declare dso_local %struct.ieee802154_mac_cb* @mac_cb_init(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.lowpan_addr_info*, i32, i32) #1

declare dso_local i32 @lowpan_skb_priv(%struct.sk_buff*) #1

declare dso_local i32 @lowpan_header_compress(%struct.sk_buff*, %struct.net_device*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i64 @ieee802154_is_broadcast_short_addr(i32) #1

declare dso_local i32 @wpan_dev_hard_header(%struct.sk_buff*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
