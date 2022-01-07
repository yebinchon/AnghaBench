; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_ip_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_br_ip_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @nf_ct_br_ip_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_br_ip_check(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @skb_network_offset(%struct.sk_buff* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %9)
  store %struct.iphdr* %10, %struct.iphdr** %4, align 8
  %11 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %12 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  store i32 -1, i32* %2, align 4
  br label %42

21:                                               ; preds = %15
  %22 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 4
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %21
  store i32 -1, i32* %2, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
