; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ifaddrlblmsg = type { i64, i32, i64 }
%struct.in6_addr = type { i32 }
%struct.ip6addrlbl_entry = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }

@IFAL_MAX = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFAL_ADDRESS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@RTM_NEWADDRLABEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @ip6addrlbl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6addrlbl_get(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrlblmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ip6addrlbl_entry*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__, align 4
  %19 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load i32, i32* @IFAL_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %32 = call i32 @ip6addrlbl_valid_get_req(%struct.sk_buff* %29, %struct.nlmsghdr* %30, %struct.nlattr** %28, %struct.netlink_ext_ack* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %146

37:                                               ; preds = %3
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %39 = call %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.ifaddrlblmsg* %39, %struct.ifaddrlblmsg** %9, align 8
  %40 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %41 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %47 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 128
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %146

53:                                               ; preds = %45
  %54 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %55 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.net*, %struct.net** %8, align 8
  %60 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %61 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @addrlbl_ifindex_exists(%struct.net* %59, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %146

68:                                               ; preds = %58, %53
  %69 = load i64, i64* @IFAL_ADDRESS, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp ne %struct.nlattr* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %146

76:                                               ; preds = %68
  %77 = load i64, i64* @IFAL_ADDRESS, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call %struct.in6_addr* @nla_data(%struct.nlattr* %79)
  store %struct.in6_addr* %80, %struct.in6_addr** %12, align 8
  %81 = call i32 (...) @ip6addrlbl_msgsize()
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.sk_buff* @nlmsg_new(i32 %81, i32 %82)
  store %struct.sk_buff* %83, %struct.sk_buff** %16, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %85 = icmp ne %struct.sk_buff* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @ENOBUFS, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %146

89:                                               ; preds = %76
  %90 = load i32, i32* @ESRCH, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %14, align 4
  %92 = call i32 (...) @rcu_read_lock()
  %93 = load %struct.net*, %struct.net** %8, align 8
  %94 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %95 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %96 = call i32 @ipv6_addr_type(%struct.in6_addr* %95)
  %97 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %98 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call %struct.ip6addrlbl_entry* @__ipv6_addr_label(%struct.net* %93, %struct.in6_addr* %94, i32 %96, i64 %99)
  store %struct.ip6addrlbl_entry* %100, %struct.ip6addrlbl_entry** %15, align 8
  %101 = load %struct.net*, %struct.net** %8, align 8
  %102 = getelementptr inbounds %struct.net, %struct.net* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  %106 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %107 = icmp ne %struct.ip6addrlbl_entry* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %89
  %109 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %110 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %15, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @NETLINK_CB(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %118 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @RTM_NEWADDRLABEL, align 4
  %121 = call i32 @ip6addrlbl_fill(%struct.sk_buff* %109, %struct.ip6addrlbl_entry* %110, i32 %111, i32 %116, i32 %119, i32 %120, i32 0)
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %108, %89
  %123 = call i32 (...) @rcu_read_unlock()
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @EMSGSIZE, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @WARN_ON(i32 %131)
  %133 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %134 = call i32 @kfree_skb(%struct.sk_buff* %133)
  br label %144

135:                                              ; preds = %122
  %136 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %137 = load %struct.net*, %struct.net** %8, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = call i32 @NETLINK_CB(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @rtnl_unicast(%struct.sk_buff* %136, %struct.net* %137, i32 %142)
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %135, %126
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %146

146:                                              ; preds = %144, %86, %73, %65, %50, %35
  %147 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ip6addrlbl_valid_get_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @addrlbl_ifindex_exists(%struct.net*, i64) #1

declare dso_local %struct.in6_addr* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @ip6addrlbl_msgsize(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ip6addrlbl_entry* @__ipv6_addr_label(%struct.net*, %struct.in6_addr*, i32, i64) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i32 @ip6addrlbl_fill(%struct.sk_buff*, %struct.ip6addrlbl_entry*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

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
