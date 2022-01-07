; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rx_h_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_rx.c_lowpan_rx_h_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@RX_CONTINUE = common dso_local global i32 0, align 4
@LOWPAN_DISPATCH_FRAG_MASK = common dso_local global i32 0, align 4
@RX_QUEUED = common dso_local global i32 0, align 4
@RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @lowpan_rx_h_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_rx_h_frag(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call i32* @skb_network_header(%struct.sk_buff* %5)
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @lowpan_is_frag1(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i32* @skb_network_header(%struct.sk_buff* %11)
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @lowpan_is_fragn(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @RX_CONTINUE, align 4
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %10, %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32* @skb_network_header(%struct.sk_buff* %20)
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LOWPAN_DISPATCH_FRAG_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @lowpan_frag_rcv(%struct.sk_buff* %19, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @RX_QUEUED, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @RX_DROP, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %28, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @lowpan_is_frag1(i32) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @lowpan_is_fragn(i32) #1

declare dso_local i32 @lowpan_frag_rcv(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
