; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_new_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_rtm_new_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.nh_config = type { i32 }
%struct.nexthop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtm_new_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtm_new_nexthop(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nh_config, align 4
  %9 = alloca %struct.nexthop*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = load %struct.net*, %struct.net** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %19 = call i32 @rtm_to_nh_config(%struct.net* %15, %struct.sk_buff* %16, %struct.nlmsghdr* %17, %struct.nh_config* %8, %struct.netlink_ext_ack* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.net*, %struct.net** %7, align 8
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %25 = call %struct.nexthop* @nexthop_add(%struct.net* %23, %struct.nh_config* %8, %struct.netlink_ext_ack* %24)
  store %struct.nexthop* %25, %struct.nexthop** %9, align 8
  %26 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %27 = call i64 @IS_ERR(%struct.nexthop* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %31 = call i32 @PTR_ERR(%struct.nexthop* %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %22
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i32, i32* %10, align 4
  ret i32 %34
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rtm_to_nh_config(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nh_config*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.nexthop* @nexthop_add(%struct.net*, %struct.nh_config*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.nexthop*) #1

declare dso_local i32 @PTR_ERR(%struct.nexthop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
