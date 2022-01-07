; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6_icmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_ipv6_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.icmp6hdr = type { i64 }
%struct.ipv6hdr = type { i32, i32 }

@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32)* @tcf_csum_ipv6_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_csum_ipv6_icmp(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.icmp6hdr*, align 8
  %9 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.icmp6hdr* @tcf_csum_skb_nextlayer(%struct.sk_buff* %10, i32 %11, i32 %12, i32 8)
  store %struct.icmp6hdr* %13, %struct.icmp6hdr** %8, align 8
  %14 = load %struct.icmp6hdr*, %struct.icmp6hdr** %8, align 8
  %15 = icmp eq %struct.icmp6hdr* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %18)
  store %struct.ipv6hdr* %19, %struct.ipv6hdr** %9, align 8
  %20 = load %struct.icmp6hdr*, %struct.icmp6hdr** %8, align 8
  %21 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.icmp6hdr*, %struct.icmp6hdr** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %23, %24
  %26 = call i32 @csum_partial(%struct.icmp6hdr* %22, i32 %25, i32 0)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %30 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %29, i32 0, i32 1
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %9, align 8
  %32 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %33, %34
  %36 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @csum_ipv6_magic(i32* %30, i32* %32, i32 %35, i32 %36, i32 %39)
  %41 = load %struct.icmp6hdr*, %struct.icmp6hdr** %8, align 8
  %42 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @CHECKSUM_NONE, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %17, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.icmp6hdr* @tcf_csum_skb_nextlayer(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @csum_partial(%struct.icmp6hdr*, i32, i32) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
