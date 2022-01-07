; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_alloc_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_alloc_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i64, i64 }
%struct.ieee802154_hdr = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32, %struct.ieee802154_hdr*, i32)* @lowpan_alloc_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @lowpan_alloc_frag(%struct.sk_buff* %0, i32 %1, %struct.ieee802154_hdr* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802154_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee802154_hdr* %2, %struct.ieee802154_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = call %struct.TYPE_2__* @lowpan_802154_dev(%struct.net_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.net_device*, %struct.net_device** %10, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sk_buff* @alloc_skb(i64 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %11, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %32 = call i64 @likely(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %4
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %44 = load %struct.net_device*, %struct.net_device** %10, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @skb_reserve(%struct.sk_buff* %43, i64 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = call i32 @skb_reset_network_header(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32* @mac_cb(%struct.sk_buff* %50)
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = call i32* @mac_cb(%struct.sk_buff* %53)
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %34
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @skb_mac_header(%struct.sk_buff* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @skb_put_data(%struct.sk_buff* %58, i32 %60, i32 %63)
  br label %82

65:                                               ; preds = %34
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = load %struct.net_device*, %struct.net_device** %10, align 8
  %68 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %68, i32 0, i32 1
  %70 = load %struct.ieee802154_hdr*, %struct.ieee802154_hdr** %8, align 8
  %71 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @wpan_dev_hard_header(%struct.sk_buff* %66, %struct.net_device* %67, i32* %69, i32* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  %79 = load i32, i32* %12, align 4
  %80 = call %struct.sk_buff* @ERR_PTR(i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %5, align 8
  br label %89

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %57
  br label %87

83:                                               ; preds = %4
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.sk_buff* @ERR_PTR(i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %11, align 8
  br label %87

87:                                               ; preds = %83, %82
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %5, align 8
  br label %89

89:                                               ; preds = %87, %76
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %90
}

declare dso_local %struct.TYPE_2__* @lowpan_802154_dev(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32* @mac_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @wpan_dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
