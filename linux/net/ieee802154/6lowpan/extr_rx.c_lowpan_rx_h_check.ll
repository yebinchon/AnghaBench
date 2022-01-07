; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rx_h_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rx_h_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @lowpan_rx_h_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_rx_h_check(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i32 @ieee802154_get_fc_from_skb(%struct.sk_buff* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ieee802154_is_data(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @ieee802154_skb_is_intra_pan_addressing(i32 %11, %struct.sk_buff* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %40

16:                                               ; preds = %10
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %40

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32* @skb_network_header(%struct.sk_buff* %27)
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @lowpan_is_nalp(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32* @skb_network_header(%struct.sk_buff* %33)
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @lowpan_is_reserved(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %25, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ieee802154_get_fc_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee802154_is_data(i32) #1

declare dso_local i32 @ieee802154_skb_is_intra_pan_addressing(i32, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @lowpan_is_nalp(i32) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @lowpan_is_reserved(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
