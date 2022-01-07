; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_rtmsg_ifa.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_rtmsg_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.inet_fill_args = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RTNLGRP_IPV4_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.in_ifaddr*, %struct.nlmsghdr*, i32)* @rtmsg_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmsg_ifa(i32 %0, %struct.in_ifaddr* %1, %struct.nlmsghdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet_fill_args, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %6, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %9, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %9, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %9, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %9, i32 0, i32 3
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %19 = icmp ne %struct.nlmsghdr* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 0, %24 ]
  store i32 %26, i32* %17, align 4
  %27 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %9, i32 0, i32 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %27, align 4
  %29 = load i32, i32* @ENOBUFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %32 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.net* @dev_net(i32 %35)
  store %struct.net* %36, %struct.net** %12, align 8
  %37 = call i32 (...) @inet_nlmsg_size()
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sk_buff* @nlmsg_new(i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %25
  br label %66

43:                                               ; preds = %25
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %46 = call i32 @inet_fill_ifaddr(%struct.sk_buff* %44, %struct.in_ifaddr* %45, %struct.inet_fill_args* %9)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  br label %66

58:                                               ; preds = %43
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = load %struct.net*, %struct.net** %12, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @RTNLGRP_IPV4_IFADDR, align 4
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @rtnl_notify(%struct.sk_buff* %59, %struct.net* %60, i32 %61, i32 %62, %struct.nlmsghdr* %63, i32 %64)
  br label %74

66:                                               ; preds = %49, %42
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.net*, %struct.net** %12, align 8
  %71 = load i32, i32* @RTNLGRP_IPV4_IFADDR, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @rtnl_set_sk_err(%struct.net* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %58, %69, %66
  ret void
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet_nlmsg_size(...) #1

declare dso_local i32 @inet_fill_ifaddr(%struct.sk_buff*, %struct.in_ifaddr*, %struct.inet_fill_args*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
