; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.if_stats_msg = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTM_NEWSTATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_stats_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_stats_get(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.if_stats_msg*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @netlink_strict_get_check(%struct.sk_buff* %23)
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %26 = call i32 @rtnl_valid_stats_req(%struct.nlmsghdr* %22, i32 %24, i32 0, %struct.netlink_ext_ack* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %4, align 4
  br label %109

31:                                               ; preds = %3
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = call %struct.if_stats_msg* @nlmsg_data(%struct.nlmsghdr* %32)
  store %struct.if_stats_msg* %33, %struct.if_stats_msg** %12, align 8
  %34 = load %struct.if_stats_msg*, %struct.if_stats_msg** %12, align 8
  %35 = getelementptr inbounds %struct.if_stats_msg, %struct.if_stats_msg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.net*, %struct.net** %8, align 8
  %40 = load %struct.if_stats_msg*, %struct.if_stats_msg** %12, align 8
  %41 = getelementptr inbounds %struct.if_stats_msg, %struct.if_stats_msg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.net_device* @__dev_get_by_index(%struct.net* %39, i64 %42)
  store %struct.net_device* %43, %struct.net_device** %9, align 8
  br label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %109

47:                                               ; preds = %38
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %109

53:                                               ; preds = %47
  %54 = load %struct.if_stats_msg*, %struct.if_stats_msg** %12, align 8
  %55 = getelementptr inbounds %struct.if_stats_msg, %struct.if_stats_msg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %109

62:                                               ; preds = %53
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @if_nlmsg_stats_size(%struct.net_device* %63, i32 %64)
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.sk_buff* @nlmsg_new(i32 %65, i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %13, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* @ENOBUFS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %109

73:                                               ; preds = %62
  %74 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %75 = load %struct.net_device*, %struct.net_device** %9, align 8
  %76 = load i32, i32* @RTM_NEWSTATS, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = call i32 @NETLINK_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %83 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @rtnl_fill_statsinfo(%struct.sk_buff* %74, %struct.net_device* %75, i32 %76, i32 %81, i32 %84, i32 0, i32 0, i32 %85, i32* %10, i32* %11)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %73
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @EMSGSIZE, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON(i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  br label %107

98:                                               ; preds = %73
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = load %struct.net*, %struct.net** %8, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i32 @NETLINK_CB(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rtnl_unicast(%struct.sk_buff* %99, %struct.net* %100, i32 %105)
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %98, %89
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %70, %59, %50, %44, %29
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rtnl_valid_stats_req(%struct.nlmsghdr*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netlink_strict_get_check(%struct.sk_buff*) #1

declare dso_local %struct.if_stats_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @if_nlmsg_stats_size(%struct.net_device*, i32) #1

declare dso_local i32 @rtnl_fill_statsinfo(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
