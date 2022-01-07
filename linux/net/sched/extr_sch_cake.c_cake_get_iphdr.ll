; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_get_iphdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_get_iphdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iphdr* (%struct.sk_buff*, %struct.ipv6hdr*)* @cake_get_iphdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iphdr* @cake_get_iphdr(%struct.sk_buff* %0, %struct.ipv6hdr* %1) #0 {
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ipv6hdr* %1, %struct.ipv6hdr** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_network_offset(%struct.sk_buff* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %13 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %10, i32 %11, i32 24, %struct.ipv6hdr* %12)
  store %struct.iphdr* %13, %struct.iphdr** %7, align 8
  %14 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %15 = icmp ne %struct.iphdr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.iphdr* null, %struct.iphdr** %3, align 8
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %19 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPPROTO_IPV6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 4
  %35 = add i32 %30, %34
  %36 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %37 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %29, i32 %35, i32 4, %struct.ipv6hdr* %36)
  store %struct.iphdr* %37, %struct.iphdr** %3, align 8
  br label %58

38:                                               ; preds = %22, %17
  %39 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  store %struct.iphdr* %44, %struct.iphdr** %3, align 8
  br label %58

45:                                               ; preds = %38
  %46 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %54 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %51, i32 %52, i32 4, %struct.ipv6hdr* %53)
  store %struct.iphdr* %54, %struct.iphdr** %3, align 8
  br label %58

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  store %struct.iphdr* null, %struct.iphdr** %3, align 8
  br label %58

58:                                               ; preds = %57, %50, %43, %28, %16
  %59 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  ret %struct.iphdr* %59
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
