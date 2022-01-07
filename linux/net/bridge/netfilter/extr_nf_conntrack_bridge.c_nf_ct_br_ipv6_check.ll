; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_ipv6_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_ipv6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @nf_ct_br_ipv6_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_br_ipv6_check(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @skb_network_offset(%struct.sk_buff* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %9)
  store %struct.ipv6hdr* %10, %struct.ipv6hdr** %4, align 8
  %11 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %12 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %18 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohs(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %22, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %34

33:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
