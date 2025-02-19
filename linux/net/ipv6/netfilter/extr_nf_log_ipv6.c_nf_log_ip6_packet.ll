; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_log_ipv6.c_nf_log_ip6_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nf_log_ipv6.c_nf_log_ip6_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_loginfo = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nf_log_buf = type { i32 }

@init_net = common dso_local global i32 0, align 4
@sysctl_nf_log_all_netns = common dso_local global i32 0, align 4
@default_loginfo = common dso_local global %struct.nf_loginfo zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*)* @nf_log_ip6_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_log_ip6_packet(%struct.net* %0, i32 %1, i32 %2, %struct.sk_buff* %3, %struct.net_device* %4, %struct.net_device* %5, %struct.nf_loginfo* %6, i8* %7) #0 {
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.nf_loginfo*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nf_log_buf*, align 8
  store %struct.net* %0, %struct.net** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store %struct.net_device* %4, %struct.net_device** %13, align 8
  store %struct.net_device* %5, %struct.net_device** %14, align 8
  store %struct.nf_loginfo* %6, %struct.nf_loginfo** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.net*, %struct.net** %9, align 8
  %19 = call i32 @net_eq(%struct.net* %18, i32* @init_net)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = load i32, i32* @sysctl_nf_log_all_netns, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %57

25:                                               ; preds = %21, %8
  %26 = call %struct.nf_log_buf* (...) @nf_log_buf_open()
  store %struct.nf_log_buf* %26, %struct.nf_log_buf** %17, align 8
  %27 = load %struct.nf_loginfo*, %struct.nf_loginfo** %15, align 8
  %28 = icmp ne %struct.nf_loginfo* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store %struct.nf_loginfo* @default_loginfo, %struct.nf_loginfo** %15, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load %struct.nf_log_buf*, %struct.nf_log_buf** %17, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %35 = load %struct.net_device*, %struct.net_device** %13, align 8
  %36 = load %struct.net_device*, %struct.net_device** %14, align 8
  %37 = load %struct.nf_loginfo*, %struct.nf_loginfo** %15, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @nf_log_dump_packet_common(%struct.nf_log_buf* %31, i32 %32, i32 %33, %struct.sk_buff* %34, %struct.net_device* %35, %struct.net_device* %36, %struct.nf_loginfo* %37, i8* %38)
  %40 = load %struct.net_device*, %struct.net_device** %13, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.nf_log_buf*, %struct.nf_log_buf** %17, align 8
  %44 = load %struct.nf_loginfo*, %struct.nf_loginfo** %15, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = call i32 @dump_ipv6_mac_header(%struct.nf_log_buf* %43, %struct.nf_loginfo* %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %42, %30
  %48 = load %struct.net*, %struct.net** %9, align 8
  %49 = load %struct.nf_log_buf*, %struct.nf_log_buf** %17, align 8
  %50 = load %struct.nf_loginfo*, %struct.nf_loginfo** %15, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = call i32 @skb_network_offset(%struct.sk_buff* %52)
  %54 = call i32 @dump_ipv6_packet(%struct.net* %48, %struct.nf_log_buf* %49, %struct.nf_loginfo* %50, %struct.sk_buff* %51, i32 %53, i32 1)
  %55 = load %struct.nf_log_buf*, %struct.nf_log_buf** %17, align 8
  %56 = call i32 @nf_log_buf_close(%struct.nf_log_buf* %55)
  br label %57

57:                                               ; preds = %47, %24
  ret void
}

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local %struct.nf_log_buf* @nf_log_buf_open(...) #1

declare dso_local i32 @nf_log_dump_packet_common(%struct.nf_log_buf*, i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*) #1

declare dso_local i32 @dump_ipv6_mac_header(%struct.nf_log_buf*, %struct.nf_loginfo*, %struct.sk_buff*) #1

declare dso_local i32 @dump_ipv6_packet(%struct.net*, %struct.nf_log_buf*, %struct.nf_loginfo*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @nf_log_buf_close(%struct.nf_log_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
