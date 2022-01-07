; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_input.c_ip6_mc_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_input.c_ip6_mc_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.net_device* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@IPSTATS_MIB_INMCAST = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IP6SKB_FORWARDED = common dso_local global i32 0, align 4
@IP6SKB_ROUTERALERT = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@IPV6_ADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_OPT_ROUTERALERT_MLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_mc_input(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @inet6_sdif(%struct.sk_buff* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.TYPE_9__* @skb_dst(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = call %struct.TYPE_10__* @dev_net(%struct.net_device* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  %18 = call i32 @__in6_dev_get_safely(%struct.net_device* %17)
  %19 = load i32, i32* @IPSTATS_MIB_INMCAST, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @__IP6_UPD_PO_STATS(%struct.TYPE_10__* %14, i32 %18, i32 %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = call %struct.TYPE_10__* @dev_net(%struct.net_device* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.net_device* @dev_get_by_index_rcu(%struct.TYPE_10__* %31, i32 %32)
  store %struct.net_device* %33, %struct.net_device** %6, align 8
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %69

42:                                               ; preds = %26
  br label %47

43:                                               ; preds = %1
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  store %struct.net_device* %46, %struct.net_device** %6, align 8
  br label %47

47:                                               ; preds = %43, %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %48)
  store %struct.ipv6hdr* %49, %struct.ipv6hdr** %5, align 8
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %52 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %51, i32 0, i32 1
  %53 = call i32 @ipv6_chk_mcast_addr(%struct.net_device* %50, i32* %52, i32* null)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i32 (...) @rcu_read_unlock()
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %64 = call i32 @ip6_input(%struct.sk_buff* %63)
  br label %68

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %65, %62
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @inet6_sdif(%struct.sk_buff*) #1

declare dso_local i32 @__IP6_UPD_PO_STATS(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @dev_net(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @__in6_dev_get_safely(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_index_rcu(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_chk_mcast_addr(%struct.net_device*, i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip6_input(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
