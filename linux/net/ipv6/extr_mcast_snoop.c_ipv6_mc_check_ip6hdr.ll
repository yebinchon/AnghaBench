; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_ip6hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast_snoop.c_ipv6_mc_check_ip6hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_mc_check_ip6hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_mc_check_ip6hdr(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @skb_network_offset(%struct.sk_buff* %7)
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %20)
  store %struct.ipv6hdr* %21, %struct.ipv6hdr** %4, align 8
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 6
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %32 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohs(i32 %33)
  %35 = add i32 %30, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @skb_set_transport_header(%struct.sk_buff* %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %45, %26, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
