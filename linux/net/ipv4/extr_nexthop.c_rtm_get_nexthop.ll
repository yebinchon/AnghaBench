; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_get_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_get_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.nexthop = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RTM_NEWNEXTHOP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtm_get_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtm_get_nexthop(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nexthop*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %21 = call i32 @nh_valid_get_del_req(%struct.nlmsghdr* %19, i32* %12, %struct.netlink_ext_ack* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %80

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOBUFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.sk_buff* @alloc_skb(i32 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %75

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.net*, %struct.net** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.nexthop* @nexthop_find_by_id(%struct.net* %38, i32 %39)
  store %struct.nexthop* %40, %struct.nexthop** %10, align 8
  %41 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %42 = icmp ne %struct.nexthop* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %77

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load %struct.nexthop*, %struct.nexthop** %10, align 8
  %47 = load i32, i32* @RTM_NEWNEXTHOP, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @NETLINK_CB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %54 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nh_fill_node(%struct.sk_buff* %45, %struct.nexthop* %46, i32 %47, i32 %52, i32 %55, i32 0)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @EMSGSIZE, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  br label %77

66:                                               ; preds = %44
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @NETLINK_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rtnl_unicast(%struct.sk_buff* %67, %struct.net* %68, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %77, %66, %34
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %80

77:                                               ; preds = %59, %43
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %75

80:                                               ; preds = %75, %24
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nh_valid_get_del_req(%struct.nlmsghdr*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local %struct.nexthop* @nexthop_find_by_id(%struct.net*, i32) #1

declare dso_local i32 @nh_fill_node(%struct.sk_buff*, %struct.nexthop*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
