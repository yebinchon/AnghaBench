; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_exthdrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_exthdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i64 }

@IPPROTO_HOPOPTS = common dso_local global i64 0, align 8
@ENOMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_mc_check_exthdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_mc_check_exthdrs(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %8)
  store %struct.ipv6hdr* %9, %struct.ipv6hdr** %4, align 8
  %10 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %11 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPPROTO_HOPOPTS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMSG, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = call i32 @skb_network_offset(%struct.sk_buff* %22)
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %27, i32 %28, i64* %6, i32* %7)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %18
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOMSG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @skb_set_transport_header(%struct.sk_buff* %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %39, %32, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i64*, i32*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
