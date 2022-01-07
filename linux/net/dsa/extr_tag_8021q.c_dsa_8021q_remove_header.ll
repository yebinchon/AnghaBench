; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_8021q_remove_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_8021q.c_dsa_8021q_remove_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @dsa_8021q_remove_header(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call i32* @skb_mac_header(%struct.sk_buff* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @VLAN_HLEN, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @ETH_HLEN, align 4
  %14 = load i32, i32* @VLAN_HLEN, align 4
  %15 = sub nsw i32 %13, %14
  %16 = call i32 @memmove(i32* %11, i32* %12, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = load i32, i32* @VLAN_HLEN, align 4
  %19 = call i32 @skb_pull(%struct.sk_buff* %17, i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = load i32, i32* @ETH_HLEN, align 4
  %22 = call i32 @skb_push(%struct.sk_buff* %20, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call i32 @skb_reset_mac_header(%struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = call i32 @skb_reset_mac_len(%struct.sk_buff* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = load i32, i32* @ETH_HLEN, align 4
  %29 = call i32 @skb_pull_rcsum(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %30
}

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
