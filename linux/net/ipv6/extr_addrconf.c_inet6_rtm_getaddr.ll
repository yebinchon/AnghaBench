; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_getaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.inet6_fill_args = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifaddrmsg = type { i64 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.inet6_ifaddr = type { i32 }
%struct.nlattr = type { i32 }

@RTM_NEWADDR = common dso_local global i32 0, align 4
@IFA_MAX = common dso_local global i32 0, align 4
@IFA_TARGET_NETNSID = common dso_local global i64 0, align 8
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet6_rtm_getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_getaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.inet6_fill_args, align 4
  %10 = alloca %struct.TYPE_2__, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.ifaddrmsg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.in6_addr*, align 8
  %16 = alloca %struct.in6_addr*, align 8
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca %struct.inet6_ifaddr*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  %23 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.net* @sock_net(i32 %26)
  store %struct.net* %27, %struct.net** %8, align 8
  %28 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 2
  %31 = load i32, i32* @RTM_NEWADDR, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 3
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i64 @NETLINK_CB(%struct.sk_buff* %37)
  %39 = bitcast %struct.TYPE_2__* %10 to i64*
  store i64 %38, i64* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %36, align 4
  %42 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %42, %struct.net** %11, align 8
  %43 = load i32, i32* @IFA_MAX, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %13, align 8
  %47 = alloca %struct.nlattr*, i64 %45, align 16
  store i64 %45, i64* %14, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %15, align 8
  store %struct.net_device* null, %struct.net_device** %17, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %51 = call i32 @inet6_rtm_valid_getaddr_req(%struct.sk_buff* %48, %struct.nlmsghdr* %49, %struct.nlattr** %47, %struct.netlink_ext_ack* %50)
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* %20, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %169

56:                                               ; preds = %3
  %57 = load i64, i64* @IFA_TARGET_NETNSID, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load i64, i64* @IFA_TARGET_NETNSID, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @nla_get_s32(%struct.nlattr* %64)
  %66 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i64 @NETLINK_CB(%struct.sk_buff* %67)
  %69 = bitcast %struct.TYPE_2__* %22 to i64*
  store i64 %68, i64* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.net* @rtnl_get_net_ns_capable(i32 %71, i32 %73)
  store %struct.net* %74, %struct.net** %11, align 8
  %75 = load %struct.net*, %struct.net** %11, align 8
  %76 = call i64 @IS_ERR(%struct.net* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %61
  %79 = load %struct.net*, %struct.net** %11, align 8
  %80 = call i32 @PTR_ERR(%struct.net* %79)
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %169

81:                                               ; preds = %61
  br label %82

82:                                               ; preds = %81, %56
  %83 = load i64, i64* @IFA_ADDRESS, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = load i64, i64* @IFA_LOCAL, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call %struct.in6_addr* @extract_addr(%struct.nlattr* %85, %struct.nlattr* %88, %struct.in6_addr** %16)
  store %struct.in6_addr* %89, %struct.in6_addr** %15, align 8
  %90 = load %struct.in6_addr*, %struct.in6_addr** %15, align 8
  %91 = icmp ne %struct.in6_addr* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %169

95:                                               ; preds = %82
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %97 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %96)
  store %struct.ifaddrmsg* %97, %struct.ifaddrmsg** %12, align 8
  %98 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %12, align 8
  %99 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.net*, %struct.net** %11, align 8
  %104 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %12, align 8
  %105 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call %struct.net_device* @dev_get_by_index(%struct.net* %103, i64 %106)
  store %struct.net_device* %107, %struct.net_device** %17, align 8
  br label %108

108:                                              ; preds = %102, %95
  %109 = load %struct.net*, %struct.net** %11, align 8
  %110 = load %struct.in6_addr*, %struct.in6_addr** %15, align 8
  %111 = load %struct.net_device*, %struct.net_device** %17, align 8
  %112 = call %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net* %109, %struct.in6_addr* %110, %struct.net_device* %111, i32 1)
  store %struct.inet6_ifaddr* %112, %struct.inet6_ifaddr** %18, align 8
  %113 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %18, align 8
  %114 = icmp ne %struct.inet6_ifaddr* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* @EADDRNOTAVAIL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %20, align 4
  br label %154

118:                                              ; preds = %108
  %119 = call i32 (...) @inet6_ifaddr_msgsize()
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.sk_buff* @nlmsg_new(i32 %119, i32 %120)
  store %struct.sk_buff* %121, %struct.sk_buff** %19, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @ENOBUFS, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %20, align 4
  br label %151

127:                                              ; preds = %118
  %128 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %129 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %18, align 8
  %130 = call i32 @inet6_fill_ifaddr(%struct.sk_buff* %128, %struct.inet6_ifaddr* %129, %struct.inet6_fill_args* %9)
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @EMSGSIZE, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp eq i32 %134, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @WARN_ON(i32 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %141 = call i32 @kfree_skb(%struct.sk_buff* %140)
  br label %151

142:                                              ; preds = %127
  %143 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %144 = load %struct.net*, %struct.net** %11, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = call i64 @NETLINK_CB(%struct.sk_buff* %145)
  %147 = bitcast %struct.TYPE_2__* %23 to i64*
  store i64 %146, i64* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @rtnl_unicast(%struct.sk_buff* %143, %struct.net* %144, i32 %149)
  store i32 %150, i32* %20, align 4
  br label %151

151:                                              ; preds = %142, %133, %124
  %152 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %18, align 8
  %153 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %152)
  br label %154

154:                                              ; preds = %151, %115
  %155 = load %struct.net_device*, %struct.net_device** %17, align 8
  %156 = icmp ne %struct.net_device* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.net_device*, %struct.net_device** %17, align 8
  %159 = call i32 @dev_put(%struct.net_device* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %9, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.net*, %struct.net** %11, align 8
  %166 = call i32 @put_net(%struct.net* %165)
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i32, i32* %20, align 4
  store i32 %168, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %169

169:                                              ; preds = %167, %92, %78, %54
  %170 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @inet6_rtm_valid_getaddr_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net* @rtnl_get_net_ns_capable(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local %struct.in6_addr* @extract_addr(%struct.nlattr*, %struct.nlattr*, %struct.in6_addr**) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.inet6_ifaddr* @ipv6_get_ifaddr(%struct.net*, %struct.in6_addr*, %struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @inet6_ifaddr_msgsize(...) #1

declare dso_local i32 @inet6_fill_ifaddr(%struct.sk_buff*, %struct.inet6_ifaddr*, %struct.inet6_fill_args*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @put_net(%struct.net*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
