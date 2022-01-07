; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_push_exthdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_push_exthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*, i32, %struct.ipv6_opt_hdr*)* @ipv6_push_exthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_push_exthdr(%struct.sk_buff* %0, i32* %1, i32 %2, %struct.ipv6_opt_hdr* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipv6_opt_hdr*, align 8
  %9 = alloca %struct.ipv6_opt_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ipv6_opt_hdr* %3, %struct.ipv6_opt_hdr** %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %8, align 8
  %12 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %11)
  %13 = call %struct.ipv6_opt_hdr* @skb_push(%struct.sk_buff* %10, i32 %12)
  store %struct.ipv6_opt_hdr* %13, %struct.ipv6_opt_hdr** %9, align 8
  %14 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %15 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %8, align 8
  %16 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %8, align 8
  %17 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %16)
  %18 = call i32 @memcpy(%struct.ipv6_opt_hdr* %14, %struct.ipv6_opt_hdr* %15, i32 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  ret void
}

declare dso_local %struct.ipv6_opt_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @memcpy(%struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
