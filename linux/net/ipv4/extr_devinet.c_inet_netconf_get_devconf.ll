; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_netconf_get_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_netconf_get_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ipv4_devconf*, %struct.ipv4_devconf* }
%struct.ipv4_devconf = type { i32 }
%struct.in_device = type { %struct.ipv4_devconf }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@NETCONFA_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETCONFA_IFINDEX = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@NETCONFA_ALL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_NEWNETCONF = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet_netconf_get_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_netconf_get_devconf(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ipv4_devconf*, align 8
  %12 = alloca %struct.in_device*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__, align 4
  %17 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %7, align 8
  %22 = load i32, i32* @NETCONFA_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %30 = call i32 @inet_netconf_valid_get_req(%struct.sk_buff* %27, %struct.nlmsghdr* %28, %struct.nlattr** %26, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %119

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* @NETCONFA_IFINDEX, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %119

42:                                               ; preds = %34
  %43 = load i64, i64* @NETCONFA_IFINDEX, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @nla_get_s32(%struct.nlattr* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  switch i32 %47, label %58 [
    i32 129, label %48
    i32 128, label %53
  ]

48:                                               ; preds = %42
  %49 = load %struct.net*, %struct.net** %7, align 8
  %50 = getelementptr inbounds %struct.net, %struct.net* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %51, align 8
  store %struct.ipv4_devconf* %52, %struct.ipv4_devconf** %11, align 8
  br label %74

53:                                               ; preds = %42
  %54 = load %struct.net*, %struct.net** %7, align 8
  %55 = getelementptr inbounds %struct.net, %struct.net* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %56, align 8
  store %struct.ipv4_devconf* %57, %struct.ipv4_devconf** %11, align 8
  br label %74

58:                                               ; preds = %42
  %59 = load %struct.net*, %struct.net** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.net_device* @__dev_get_by_index(%struct.net* %59, i32 %60)
  store %struct.net_device* %61, %struct.net_device** %13, align 8
  %62 = load %struct.net_device*, %struct.net_device** %13, align 8
  %63 = icmp ne %struct.net_device* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %119

65:                                               ; preds = %58
  %66 = load %struct.net_device*, %struct.net_device** %13, align 8
  %67 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %66)
  store %struct.in_device* %67, %struct.in_device** %12, align 8
  %68 = load %struct.in_device*, %struct.in_device** %12, align 8
  %69 = icmp ne %struct.in_device* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %119

71:                                               ; preds = %65
  %72 = load %struct.in_device*, %struct.in_device** %12, align 8
  %73 = getelementptr inbounds %struct.in_device, %struct.in_device* %72, i32 0, i32 0
  store %struct.ipv4_devconf* %73, %struct.ipv4_devconf** %11, align 8
  br label %74

74:                                               ; preds = %71, %53, %48
  %75 = load i32, i32* @ENOBUFS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @NETCONFA_ALL, align 4
  %78 = call i32 @inet_netconf_msgsize_devconf(i32 %77)
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.sk_buff* @nlmsg_new(i32 %78, i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %119

84:                                               ; preds = %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %11, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @NETLINK_CB(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %94 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RTM_NEWNETCONF, align 4
  %97 = load i32, i32* @NETCONFA_ALL, align 4
  %98 = call i32 @inet_netconf_fill_devconf(%struct.sk_buff* %85, i32 %86, %struct.ipv4_devconf* %87, i32 %92, i32 %95, i32 %96, i32 0, i32 %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %84
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @EMSGSIZE, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @WARN_ON(i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  br label %119

110:                                              ; preds = %84
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = load %struct.net*, %struct.net** %7, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @NETLINK_CB(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @rtnl_unicast(%struct.sk_buff* %111, %struct.net* %112, i32 %117)
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %110, %101, %83, %70, %64, %41, %33
  %120 = load i32, i32* %15, align 4
  %121 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %121)
  ret i32 %120
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet_netconf_valid_get_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet_netconf_msgsize_devconf(i32) #1

declare dso_local i32 @inet_netconf_fill_devconf(%struct.sk_buff*, i32, %struct.ipv4_devconf*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
