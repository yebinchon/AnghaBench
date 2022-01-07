; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_seg6_update_csum.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_seg6_update_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6_sr_hdr = type { i32, %struct.in6_addr* }
%struct.in6_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @seg6_update_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seg6_update_csum(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ipv6_sr_hdr*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = call i64 @skb_transport_header(%struct.sk_buff* %7)
  %9 = inttoptr i64 %8 to %struct.ipv6_sr_hdr*
  store %struct.ipv6_sr_hdr* %9, %struct.ipv6_sr_hdr** %3, align 8
  %10 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %10, i32 0, i32 1
  %12 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %13 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i64 %16
  store %struct.in6_addr* %17, %struct.in6_addr** %4, align 8
  %18 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %19 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %23 = bitcast %struct.ipv6_sr_hdr* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %26 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %3, align 8
  %30 = bitcast %struct.ipv6_sr_hdr* %29 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @update_csum_diff4(%struct.sk_buff* %32, i32 %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %38 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %41 = bitcast %struct.in6_addr* %40 to i32*
  %42 = call i32 @update_csum_diff16(%struct.sk_buff* %36, i32* %39, i32* %41)
  ret void
}

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @update_csum_diff4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @update_csum_diff16(%struct.sk_buff*, i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
