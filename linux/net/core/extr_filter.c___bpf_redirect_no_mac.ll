; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_redirect_no_mac.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c___bpf_redirect_no_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }

@BPF_F_INGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @__bpf_redirect_no_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_redirect_no_mac(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_network_offset(%struct.sk_buff* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @__skb_pull(%struct.sk_buff* %13, i32 %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @skb_at_tc_ingress(%struct.sk_buff* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_mac_header(%struct.sk_buff* %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %20, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %12
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_pop_mac_header(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @skb_reset_mac_len(%struct.sk_buff* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BPF_F_INGRESS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @__bpf_rx_skb_no_mac(%struct.net_device* %36, %struct.sk_buff* %37)
  br label %43

39:                                               ; preds = %26
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @__bpf_tx_skb(%struct.net_device* %40, %struct.sk_buff* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  ret i32 %44
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_at_tc_ingress(%struct.sk_buff*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pop_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @__bpf_rx_skb_no_mac(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @__bpf_tx_skb(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
