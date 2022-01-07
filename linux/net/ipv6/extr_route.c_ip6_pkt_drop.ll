; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_pkt_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_pkt_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i64 }
%struct.net = type { i64 }
%struct.inet6_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPSTATS_MIB_INADDRERRORS = common dso_local global i32 0, align 4
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32)* @ip6_pkt_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_pkt_drop(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %11)
  store %struct.dst_entry* %12, %struct.dst_entry** %7, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.net* @dev_net(i64 %15)
  store %struct.net* %16, %struct.net** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @netif_is_l3_master(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = getelementptr inbounds %struct.net, %struct.net* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.net*, %struct.net** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_get_by_index_rcu(%struct.net* %31, i32 %35)
  %37 = call %struct.inet6_dev* @__in6_dev_get_safely(i32 %36)
  store %struct.inet6_dev* %37, %struct.inet6_dev** %9, align 8
  br label %41

38:                                               ; preds = %22, %3
  %39 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %40 = call %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry* %39)
  store %struct.inet6_dev* %40, %struct.inet6_dev** %9, align 8
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %62 [
    i32 129, label %43
    i32 128, label %57
  ]

43:                                               ; preds = %41
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @ipv6_addr_type(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.net*, %struct.net** %8, align 8
  %53 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %54 = load i32, i32* @IPSTATS_MIB_INADDRERRORS, align 4
  %55 = call i32 @IP6_INC_STATS(%struct.net* %52, %struct.inet6_dev* %53, i32 %54)
  br label %62

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %41, %56
  %58 = load %struct.net*, %struct.net** %8, align 8
  %59 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @IP6_INC_STATS(%struct.net* %58, %struct.inet6_dev* %59, i32 %60)
  br label %62

62:                                               ; preds = %41, %57, %51
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @netif_is_l3_master(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @skb_dst_drop(%struct.sk_buff* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @icmpv6_send(%struct.sk_buff* %72, i32 %73, i32 %74, i32 0)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @kfree_skb(%struct.sk_buff* %76)
  ret i32 0
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i64) #1

declare dso_local i64 @netif_is_l3_master(i32) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get_safely(i32) #1

declare dso_local i32 @dev_get_by_index_rcu(%struct.net*, i32) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
