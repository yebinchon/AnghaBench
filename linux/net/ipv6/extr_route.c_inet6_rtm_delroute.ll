; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_inet6_rtm_delroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_inet6_rtm_delroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib6_config = type { i32, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Nexthop id does not exist\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet6_rtm_delroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_delroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.fib6_config, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %12 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %13 = call i32 @rtm_to_fib6_config(%struct.sk_buff* %10, %struct.nlmsghdr* %11, %struct.fib6_config* %8, %struct.netlink_ext_ack* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %8, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sock_net(i32 %25)
  %27 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %8, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @nexthop_find_by_id(i32 %26, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %33 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %22, %18
  %37 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %42 = call i32 @ip6_route_multipath_del(%struct.fib6_config* %8, %struct.netlink_ext_ack* %41)
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %8, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %46 = call i32 @ip6_route_del(%struct.fib6_config* %8, %struct.netlink_ext_ack* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %40, %31, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @rtm_to_fib6_config(%struct.sk_buff*, %struct.nlmsghdr*, %struct.fib6_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nexthop_find_by_id(i32, i64) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @ip6_route_multipath_del(%struct.fib6_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @ip6_route_del(%struct.fib6_config*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
