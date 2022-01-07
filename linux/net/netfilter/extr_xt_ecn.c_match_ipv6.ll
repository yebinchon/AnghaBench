; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_match_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_match_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_ecn_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32* }

@XT_ECN_IP_MASK = common dso_local global i32 0, align 4
@XT_ECN_OP_MATCH_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_ecn_info*)* @match_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_ipv6(%struct.sk_buff* %0, %struct.xt_ecn_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_ecn_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_ecn_info* %1, %struct.xt_ecn_info** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 4
  %12 = load i32, i32* @XT_ECN_IP_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %4, align 8
  %15 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %4, align 8
  %20 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XT_ECN_OP_MATCH_IP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = xor i32 %18, %27
  ret i32 %28
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
