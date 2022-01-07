; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_del_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_del_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.nl_info = type { i32, %struct.net*, %struct.nlmsghdr* }
%struct.TYPE_2__ = type { i32 }
%struct.nexthop = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtm_del_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtm_del_nexthop(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nl_info, align 8
  %10 = alloca %struct.TYPE_2__, align 4
  %11 = alloca %struct.nexthop*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %8, align 8
  %18 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %9, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @NETLINK_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %18, align 8
  %24 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %9, i32 0, i32 1
  %25 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %25, %struct.net** %24, align 8
  %26 = getelementptr inbounds %struct.nl_info, %struct.nl_info* %9, i32 0, i32 2
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  store %struct.nlmsghdr* %27, %struct.nlmsghdr** %26, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %30 = call i32 @nh_valid_get_del_req(%struct.nlmsghdr* %28, i32* %13, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %48

35:                                               ; preds = %3
  %36 = load %struct.net*, %struct.net** %8, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call %struct.nexthop* @nexthop_find_by_id(%struct.net* %36, i32 %37)
  store %struct.nexthop* %38, %struct.nexthop** %11, align 8
  %39 = load %struct.nexthop*, %struct.nexthop** %11, align 8
  %40 = icmp ne %struct.nexthop* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %35
  %45 = load %struct.net*, %struct.net** %8, align 8
  %46 = load %struct.nexthop*, %struct.nexthop** %11, align 8
  %47 = call i32 @remove_nexthop(%struct.net* %45, %struct.nexthop* %46, %struct.nl_info* %9)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %41, %33
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nh_valid_get_del_req(%struct.nlmsghdr*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.nexthop* @nexthop_find_by_id(%struct.net*, i32) #1

declare dso_local i32 @remove_nexthop(%struct.net*, %struct.nexthop*, %struct.nl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
