; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_netfilter.c_nf_ip6_reroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_netfilter.c_nf_ip6_reroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_queue_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ip6_rt_info = type { i64, i32, i32 }
%struct.ipv6hdr = type { i32, i32 }

@NF_INET_LOCAL_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_queue_entry*)* @nf_ip6_reroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ip6_reroute(%struct.sk_buff* %0, %struct.nf_queue_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_queue_entry*, align 8
  %6 = alloca %struct.ip6_rt_info*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_queue_entry* %1, %struct.nf_queue_entry** %5, align 8
  %8 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %5, align 8
  %9 = call %struct.ip6_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry* %8)
  store %struct.ip6_rt_info* %9, %struct.ip6_rt_info** %6, align 8
  %10 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %5, align 8
  %11 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NF_INET_LOCAL_OUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %17)
  store %struct.ipv6hdr* %18, %struct.ipv6hdr** %7, align 8
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 1
  %21 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %6, align 8
  %22 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %21, i32 0, i32 2
  %23 = call i32 @ipv6_addr_equal(i32* %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %26, i32 0, i32 0
  %28 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %6, align 8
  %29 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %28, i32 0, i32 1
  %30 = call i32 @ipv6_addr_equal(i32* %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ip6_rt_info*, %struct.ip6_rt_info** %6, align 8
  %37 = getelementptr inbounds %struct.ip6_rt_info, %struct.ip6_rt_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32, %25, %16
  %41 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %5, align 8
  %42 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @ip6_route_me_harder(i32 %44, %struct.sk_buff* %45)
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.ip6_rt_info* @nf_queue_entry_reroute(%struct.nf_queue_entry*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @ip6_route_me_harder(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
