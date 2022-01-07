; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rx_h_iphc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rx_h_iphc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@RX_CONTINUE = common dso_local global i32 0, align 4
@RX_DROP_UNUSABLE = common dso_local global i32 0, align 4
@RX_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @lowpan_rx_h_iphc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_rx_h_iphc(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i32* @skb_network_header(%struct.sk_buff* %5)
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @lowpan_is_iphc(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.TYPE_2__* @lowpan_802154_cb(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = call i32 @lowpan_iphc_decompress(%struct.sk_buff* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @RX_DROP_UNUSABLE, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @RX_QUEUED, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @lowpan_is_iphc(i32) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @lowpan_802154_cb(%struct.sk_buff*) #1

declare dso_local i32 @lowpan_iphc_decompress(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
