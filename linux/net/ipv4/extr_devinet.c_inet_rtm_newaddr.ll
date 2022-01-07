; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_rtm_newaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_rtm_newaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.in_ifaddr = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@INFINITY_LIFE_TIME = common dso_local global i32 0, align 4
@IFA_F_MCAUTOJOIN = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@check_lifetime_work = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet_rtm_newaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_rtm_newaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.in_ifaddr*, align 8
  %10 = alloca %struct.in_ifaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @INFINITY_LIFE_TIME, align 4
  store i32 %22, i32* %12, align 4
  %23 = call i32 (...) @ASSERT_RTNL()
  %24 = load %struct.net*, %struct.net** %8, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call %struct.in_ifaddr* @rtm_to_ifaddr(%struct.net* %24, %struct.nlmsghdr* %25, i32* %11, i32* %12, %struct.netlink_ext_ack* %26)
  store %struct.in_ifaddr* %27, %struct.in_ifaddr** %9, align 8
  %28 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %29 = call i64 @IS_ERR(%struct.in_ifaddr* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %33 = call i32 @PTR_ERR(%struct.in_ifaddr* %32)
  store i32 %33, i32* %4, align 4
  br label %128

34:                                               ; preds = %3
  %35 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %36 = call %struct.in_ifaddr* @find_matching_ifa(%struct.in_ifaddr* %35)
  store %struct.in_ifaddr* %36, %struct.in_ifaddr** %10, align 8
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %10, align 8
  %38 = icmp ne %struct.in_ifaddr* %37, null
  br i1 %38, label %74, label %39

39:                                               ; preds = %34
  %40 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @set_ifa_lifetime(%struct.in_ifaddr* %40, i32 %41, i32 %42)
  %44 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %45 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IFA_F_MCAUTOJOIN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %39
  %51 = load %struct.net*, %struct.net** %8, align 8
  %52 = getelementptr inbounds %struct.net, %struct.net* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %56 = call i32 @ip_mc_config(i32 %54, i32 1, %struct.in_ifaddr* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %61 = call i32 @inet_free_ifa(%struct.in_ifaddr* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %4, align 4
  br label %128

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @NETLINK_CB(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %73 = call i32 @__inet_insert_ifa(%struct.in_ifaddr* %65, %struct.nlmsghdr* %66, i32 %71, %struct.netlink_ext_ack* %72)
  store i32 %73, i32* %4, align 4
  br label %128

74:                                               ; preds = %34
  %75 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %76 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %15, align 8
  %78 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %79 = call i32 @inet_free_ifa(%struct.in_ifaddr* %78)
  %80 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %81 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NLM_F_EXCL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %74
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %88 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NLM_F_REPLACE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %86, %74
  %94 = load i32, i32* @EEXIST, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %128

96:                                               ; preds = %86
  %97 = load %struct.in_ifaddr*, %struct.in_ifaddr** %10, align 8
  store %struct.in_ifaddr* %97, %struct.in_ifaddr** %9, align 8
  %98 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %99 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @fib_modify_prefix_metric(%struct.in_ifaddr* %104, i64 %105)
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %109 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %103, %96
  %111 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @set_ifa_lifetime(%struct.in_ifaddr* %111, i32 %112, i32 %113)
  %115 = call i32 @cancel_delayed_work(i32* @check_lifetime_work)
  %116 = load i32, i32* @system_power_efficient_wq, align 4
  %117 = call i32 @queue_delayed_work(i32 %116, i32* @check_lifetime_work, i32 0)
  %118 = load i32, i32* @RTM_NEWADDR, align 4
  %119 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %120 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call i32 @NETLINK_CB(%struct.sk_buff* %121)
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @rtmsg_ifa(i32 %118, %struct.in_ifaddr* %119, %struct.nlmsghdr* %120, i32 %125)
  br label %127

127:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %93, %64, %59, %31
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.in_ifaddr* @rtm_to_ifaddr(%struct.net*, %struct.nlmsghdr*, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.in_ifaddr*) #1

declare dso_local i32 @PTR_ERR(%struct.in_ifaddr*) #1

declare dso_local %struct.in_ifaddr* @find_matching_ifa(%struct.in_ifaddr*) #1

declare dso_local i32 @set_ifa_lifetime(%struct.in_ifaddr*, i32, i32) #1

declare dso_local i32 @ip_mc_config(i32, i32, %struct.in_ifaddr*) #1

declare dso_local i32 @inet_free_ifa(%struct.in_ifaddr*) #1

declare dso_local i32 @__inet_insert_ifa(%struct.in_ifaddr*, %struct.nlmsghdr*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @fib_modify_prefix_metric(%struct.in_ifaddr*, i64) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @rtmsg_ifa(i32, %struct.in_ifaddr*, %struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
