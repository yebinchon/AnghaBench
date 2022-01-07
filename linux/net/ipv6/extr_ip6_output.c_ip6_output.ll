; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.TYPE_7__ = type { i32 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@ip6_finish_output = common dso_local global i32 0, align 4
@IP6SKB_REROUTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.TYPE_6__* @skb_dst(%struct.sk_buff* %14)
  %16 = call %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_6__* %15)
  store %struct.inet6_dev* %16, %struct.inet6_dev** %9, align 8
  %17 = load i32, i32* @ETH_P_IPV6, align 4
  %18 = call i32 @htons(i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %25 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %33 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %34 = call i32 @IP6_INC_STATS(%struct.net* %31, %struct.inet6_dev* %32, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  store i32 0, i32* %4, align 4
  br label %55

37:                                               ; preds = %3
  %38 = load i32, i32* @NFPROTO_IPV6, align 4
  %39 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %40 = load %struct.net*, %struct.net** %5, align 8
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = load i32, i32* @ip6_finish_output, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call %struct.TYPE_7__* @IP6CB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IP6SKB_REROUTED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @NF_HOOK_COND(i32 %38, i32 %39, %struct.net* %40, %struct.sock* %41, %struct.sk_buff* %42, i32* null, %struct.net_device* %43, i32 %44, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %37, %30
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_6__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_6__*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK_COND(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.net_device*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @IP6CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
