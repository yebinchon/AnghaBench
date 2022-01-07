; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_tx.c_ieee802154_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_tx.c_ieee802154_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_local = type { i32, i32, %struct.sk_buff*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i64, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@IEEE802154_HW_TX_OMIT_CKSUM = common dso_local global i32 0, align 4
@IEEE802154_FCS_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_local*, %struct.sk_buff*)* @ieee802154_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_tx(%struct.ieee802154_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee802154_local* %0, %struct.ieee802154_local** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %14 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEEE802154_HW_TX_OMIT_CKSUM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i64 @skb_tailroom(%struct.sk_buff* %21)
  %23 = load i64, i64* @IEEE802154_FCS_LEN, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i64, i64* @IEEE802154_FCS_LEN, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %29, i32 0, i64 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call i64 @likely(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @consume_skb(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %5, align 8
  br label %41

40:                                               ; preds = %28
  br label %102

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @crc_ccitt(i32 0, i32 %45, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @skb_put(%struct.sk_buff* %51, i32 2)
  %53 = call i32 @put_unaligned_le16(i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %42, %2
  %55 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %56 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %55, i32 0, i32 3
  %57 = call i32 @ieee802154_stop_queue(%struct.TYPE_7__* %56)
  %58 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %59 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %58, i32 0, i32 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %54
  %65 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @drv_xmit_async(%struct.ieee802154_local* %65, %struct.sk_buff* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %72 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %71, i32 0, i32 3
  %73 = call i32 @ieee802154_wake_queue(%struct.TYPE_7__* %72)
  br label %102

74:                                               ; preds = %64
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %82
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 4
  br label %100

90:                                               ; preds = %54
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %93 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %92, i32 0, i32 2
  store %struct.sk_buff* %91, %struct.sk_buff** %93, align 8
  %94 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %95 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %98 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %97, i32 0, i32 0
  %99 = call i32 @queue_work(i32 %96, i32* %98)
  br label %100

100:                                              ; preds = %90, %74
  %101 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %70, %40
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  %105 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %100
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @crc_ccitt(i32, i32, i64) #1

declare dso_local i32 @put_unaligned_le16(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee802154_stop_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @drv_xmit_async(%struct.ieee802154_local*, %struct.sk_buff*) #1

declare dso_local i32 @ieee802154_wake_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
