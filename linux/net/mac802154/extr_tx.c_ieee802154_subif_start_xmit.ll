; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_tx.c_ieee802154_subif_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_tx.c_ieee802154_subif_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee802154_sub_if_data = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"encryption failed: %i\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_subif_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ieee802154_sub_if_data*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %8)
  store %struct.ieee802154_sub_if_data* %9, %struct.ieee802154_sub_if_data** %6, align 8
  %10 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %6, align 8
  %11 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @mac802154_llsec_encrypt(i32* %11, %struct.sk_buff* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @netdev_warn(%struct.net_device* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  %22 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %6, align 8
  %30 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @ieee802154_tx(i32 %31, %struct.sk_buff* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %23, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @mac802154_llsec_encrypt(i32*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee802154_tx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
