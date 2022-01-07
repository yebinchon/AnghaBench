; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_ifa_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_ifa_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.inet6_fill_args = type { i32, i32, i32, i32, i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV6_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.inet6_ifaddr*)* @inet6_ifa_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inet6_ifa_notify(i32 %0, %struct.inet6_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.inet6_fill_args, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %4, align 8
  %9 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %10 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @dev_net(i32 %13)
  store %struct.net* %14, %struct.net** %6, align 8
  %15 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %7, i32 0, i32 0
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %7, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %7, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %7, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %7, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  %23 = call i32 (...) @inet6_ifaddr_msgsize()
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call %struct.sk_buff* @nlmsg_new(i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %50

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %32 = call i32 @inet6_fill_ifaddr(%struct.sk_buff* %30, %struct.inet6_ifaddr* %31, %struct.inet6_fill_args* %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  br label %50

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load %struct.net*, %struct.net** %6, align 8
  %47 = load i32, i32* @RTNLGRP_IPV6_IFADDR, align 4
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call i32 @rtnl_notify(%struct.sk_buff* %45, %struct.net* %46, i32 0, i32 %47, i32* null, i32 %48)
  br label %58

50:                                               ; preds = %35, %28
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.net*, %struct.net** %6, align 8
  %55 = load i32, i32* @RTNLGRP_IPV6_IFADDR, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @rtnl_set_sk_err(%struct.net* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %44, %53, %50
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet6_ifaddr_msgsize(...) #1

declare dso_local i32 @inet6_fill_ifaddr(%struct.sk_buff*, %struct.inet6_ifaddr*, %struct.inet6_fill_args*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
