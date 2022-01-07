; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_netconf_get_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_netconf_get_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ipv6_devconf*, %struct.ipv6_devconf* }
%struct.ipv6_devconf = type { i32 }
%struct.inet6_dev = type { %struct.ipv6_devconf }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@NETCONFA_MAX = common dso_local global i32 0, align 4
@NETCONFA_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NETCONFA_ALL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_NEWNETCONF = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet6_netconf_get_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_netconf_get_devconf(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inet6_dev*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.ipv6_devconf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 4
  %19 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i32, i32* @NETCONFA_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  store %struct.inet6_dev* null, %struct.inet6_dev** %11, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %32 = call i32 @inet6_netconf_valid_get_req(%struct.sk_buff* %29, %struct.nlmsghdr* %30, %struct.nlattr** %28, %struct.netlink_ext_ack* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %140

37:                                               ; preds = %3
  %38 = load i64, i64* @NETCONFA_IFINDEX, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %140

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %16, align 4
  %48 = load i64, i64* @NETCONFA_IFINDEX, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @nla_get_s32(%struct.nlattr* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  switch i32 %52, label %63 [
    i32 129, label %53
    i32 128, label %58
  ]

53:                                               ; preds = %45
  %54 = load %struct.net*, %struct.net** %8, align 8
  %55 = getelementptr inbounds %struct.net, %struct.net* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %56, align 8
  store %struct.ipv6_devconf* %57, %struct.ipv6_devconf** %14, align 8
  br label %81

58:                                               ; preds = %45
  %59 = load %struct.net*, %struct.net** %8, align 8
  %60 = getelementptr inbounds %struct.net, %struct.net* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %61, align 8
  store %struct.ipv6_devconf* %62, %struct.ipv6_devconf** %14, align 8
  br label %81

63:                                               ; preds = %45
  %64 = load %struct.net*, %struct.net** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call %struct.net_device* @dev_get_by_index(%struct.net* %64, i32 %65)
  store %struct.net_device* %66, %struct.net_device** %12, align 8
  %67 = load %struct.net_device*, %struct.net_device** %12, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %140

72:                                               ; preds = %63
  %73 = load %struct.net_device*, %struct.net_device** %12, align 8
  %74 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %73)
  store %struct.inet6_dev* %74, %struct.inet6_dev** %11, align 8
  %75 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %76 = icmp ne %struct.inet6_dev* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %126

78:                                               ; preds = %72
  %79 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %80 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %79, i32 0, i32 0
  store %struct.ipv6_devconf* %80, %struct.ipv6_devconf** %14, align 8
  br label %81

81:                                               ; preds = %78, %58, %53
  %82 = load i32, i32* @ENOBUFS, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* @NETCONFA_ALL, align 4
  %85 = call i32 @inet6_netconf_msgsize_devconf(i32 %84)
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.sk_buff* @nlmsg_new(i32 %85, i32 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %13, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  br label %126

91:                                               ; preds = %81
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %14, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call i32 @NETLINK_CB(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %101 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RTM_NEWNETCONF, align 4
  %104 = load i32, i32* @NETCONFA_ALL, align 4
  %105 = call i32 @inet6_netconf_fill_devconf(%struct.sk_buff* %92, i32 %93, %struct.ipv6_devconf* %94, i32 %99, i32 %102, i32 %103, i32 0, i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %91
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @EMSGSIZE, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @WARN_ON(i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %116 = call i32 @kfree_skb(%struct.sk_buff* %115)
  br label %126

117:                                              ; preds = %91
  %118 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %119 = load %struct.net*, %struct.net** %8, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call i32 @NETLINK_CB(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @rtnl_unicast(%struct.sk_buff* %118, %struct.net* %119, i32 %124)
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %117, %108, %90, %77
  %127 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %128 = icmp ne %struct.inet6_dev* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.inet6_dev*, %struct.inet6_dev** %11, align 8
  %131 = call i32 @in6_dev_put(%struct.inet6_dev* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.net_device*, %struct.net_device** %12, align 8
  %134 = icmp ne %struct.net_device* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.net_device*, %struct.net_device** %12, align 8
  %137 = call i32 @dev_put(%struct.net_device* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %140

140:                                              ; preds = %138, %69, %42, %35
  %141 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet6_netconf_valid_get_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet6_netconf_msgsize_devconf(i32) #1

declare dso_local i32 @inet6_netconf_fill_devconf(%struct.sk_buff*, i32, %struct.ipv6_devconf*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
