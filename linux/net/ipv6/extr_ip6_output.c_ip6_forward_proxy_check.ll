; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_forward_proxy_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_forward_proxy_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ipv6hdr = type { i64, i32 }
%struct.icmp6hdr = type { i32 }

@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip6_forward_proxy_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_forward_proxy_check(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.icmp6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %9)
  store %struct.ipv6hdr* %10, %struct.ipv6hdr** %4, align 8
  %11 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %12 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @ipv6_ext_hdr(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %18, i32 16, i64* %5, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %68

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %1
  store i32 16, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i64 @skb_network_header(%struct.sk_buff* %31)
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = add nsw i64 %35, 1
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i32 @pskb_may_pull(%struct.sk_buff* %30, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %68

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i64 @skb_network_header(%struct.sk_buff* %45)
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = inttoptr i64 %49 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %50, %struct.icmp6hdr** %8, align 8
  %51 = load %struct.icmp6hdr*, %struct.icmp6hdr** %8, align 8
  %52 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %55 [
    i32 128, label %54
    i32 129, label %54
    i32 131, label %54
    i32 132, label %54
    i32 130, label %54
  ]

54:                                               ; preds = %44, %44, %44, %44, %44
  store i32 1, i32* %2, align 4
  br label %68

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %59 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %58, i32 0, i32 1
  %60 = call i32 @ipv6_addr_type(i32* %59)
  %61 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = call i32 @dst_link_failure(%struct.sk_buff* %65)
  store i32 -1, i32* %2, align 4
  br label %68

67:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %54, %43, %22
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_ext_hdr(i64) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i64*, i32*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
