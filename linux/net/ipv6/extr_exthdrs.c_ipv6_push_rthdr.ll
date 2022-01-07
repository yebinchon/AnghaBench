; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_push_rthdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_push_rthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6_rt_hdr = type { i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*, %struct.ipv6_rt_hdr*, %struct.in6_addr**, %struct.in6_addr*)* @ipv6_push_rthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_push_rthdr(%struct.sk_buff* %0, i32* %1, %struct.ipv6_rt_hdr* %2, %struct.in6_addr** %3, %struct.in6_addr* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ipv6_rt_hdr*, align 8
  %9 = alloca %struct.in6_addr**, align 8
  %10 = alloca %struct.in6_addr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ipv6_rt_hdr* %2, %struct.ipv6_rt_hdr** %8, align 8
  store %struct.in6_addr** %3, %struct.in6_addr*** %9, align 8
  store %struct.in6_addr* %4, %struct.in6_addr** %10, align 8
  %11 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %8, align 8
  %12 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %28 [
    i32 130, label %14
    i32 131, label %14
    i32 129, label %14
    i32 128, label %21
  ]

14:                                               ; preds = %5, %5, %5
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %8, align 8
  %18 = load %struct.in6_addr**, %struct.in6_addr*** %9, align 8
  %19 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %20 = call i32 @ipv6_push_rthdr0(%struct.sk_buff* %15, i32* %16, %struct.ipv6_rt_hdr* %17, %struct.in6_addr** %18, %struct.in6_addr* %19)
  br label %29

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %8, align 8
  %25 = load %struct.in6_addr**, %struct.in6_addr*** %9, align 8
  %26 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %27 = call i32 @ipv6_push_rthdr4(%struct.sk_buff* %22, i32* %23, %struct.ipv6_rt_hdr* %24, %struct.in6_addr** %25, %struct.in6_addr* %26)
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %21, %14
  ret void
}

declare dso_local i32 @ipv6_push_rthdr0(%struct.sk_buff*, i32*, %struct.ipv6_rt_hdr*, %struct.in6_addr**, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_push_rthdr4(%struct.sk_buff*, i32*, %struct.ipv6_rt_hdr*, %struct.in6_addr**, %struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
