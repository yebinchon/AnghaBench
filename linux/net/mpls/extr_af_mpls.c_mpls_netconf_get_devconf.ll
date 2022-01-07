; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_netconf_get_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_netconf_get_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.mpls_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@NETCONFA_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETCONFA_IFINDEX = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@NETCONFA_ALL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_NEWNETCONF = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @mpls_netconf_get_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_netconf_get_devconf(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.mpls_dev*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %7, align 8
  %21 = load i32, i32* @NETCONFA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %29 = call i32 @mpls_netconf_valid_get_req(%struct.sk_buff* %26, %struct.nlmsghdr* %27, %struct.nlattr** %25, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %102

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  %36 = load i64, i64* @NETCONFA_IFINDEX, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %102

41:                                               ; preds = %33
  %42 = load i64, i64* @NETCONFA_IFINDEX, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_s32(%struct.nlattr* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.net*, %struct.net** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.net_device* @__dev_get_by_index(%struct.net* %46, i32 %47)
  store %struct.net_device* %48, %struct.net_device** %10, align 8
  %49 = load %struct.net_device*, %struct.net_device** %10, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %102

52:                                               ; preds = %41
  %53 = load %struct.net_device*, %struct.net_device** %10, align 8
  %54 = call %struct.mpls_dev* @mpls_dev_get(%struct.net_device* %53)
  store %struct.mpls_dev* %54, %struct.mpls_dev** %11, align 8
  %55 = load %struct.mpls_dev*, %struct.mpls_dev** %11, align 8
  %56 = icmp ne %struct.mpls_dev* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %102

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOBUFS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* @NETCONFA_ALL, align 4
  %62 = call i32 @mpls_netconf_msgsize_devconf(i32 %61)
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.sk_buff* @nlmsg_new(i32 %62, i32 %63)
  store %struct.sk_buff* %64, %struct.sk_buff** %12, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = icmp ne %struct.sk_buff* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %102

68:                                               ; preds = %58
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = load %struct.mpls_dev*, %struct.mpls_dev** %11, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @NETLINK_CB(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %77 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RTM_NEWNETCONF, align 4
  %80 = load i32, i32* @NETCONFA_ALL, align 4
  %81 = call i32 @mpls_netconf_fill_devconf(%struct.sk_buff* %69, %struct.mpls_dev* %70, i32 %75, i32 %78, i32 %79, i32 0, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %68
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @EMSGSIZE, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  br label %102

93:                                               ; preds = %68
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = load %struct.net*, %struct.net** %7, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @NETLINK_CB(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @rtnl_unicast(%struct.sk_buff* %94, %struct.net* %95, i32 %100)
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %93, %84, %67, %57, %51, %40, %32
  %103 = load i32, i32* %14, align 4
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  ret i32 %103
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mpls_netconf_valid_get_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.mpls_dev* @mpls_dev_get(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @mpls_netconf_msgsize_devconf(i32) #1

declare dso_local i32 @mpls_netconf_fill_devconf(%struct.sk_buff*, %struct.mpls_dev*, i32, i32, i32, i32, i32) #1

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
