; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_getlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ifinfomsg = type { i64 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nlattr = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IFLA_MAX = common dso_local global i32 0, align 4
@IFLA_TARGET_NETNSID = common dso_local global i64 0, align 8
@IFLA_IFNAME = common dso_local global i64 0, align 8
@IFLA_EXT_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_getlink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.ifinfomsg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net* @sock_net(i32 %25)
  store %struct.net* %26, %struct.net** %8, align 8
  %27 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %27, %struct.net** %9, align 8
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = load i32, i32* @IFLA_MAX, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = alloca %struct.nlattr*, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  store %struct.net_device* null, %struct.net_device** %14, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %39 = call i32 @rtnl_valid_getlink_req(%struct.sk_buff* %36, %struct.nlmsghdr* %37, %struct.nlattr** %35, %struct.netlink_ext_ack* %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %184

44:                                               ; preds = %3
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %46 = call i32 @rtnl_ensure_unique_netns(%struct.nlattr** %35, %struct.netlink_ext_ack* %45, i32 1)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %184

51:                                               ; preds = %44
  %52 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_s32(%struct.nlattr* %59)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i64 @NETLINK_CB(%struct.sk_buff* %61)
  %63 = bitcast %struct.TYPE_2__* %20 to i64*
  store i64 %62, i64* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call %struct.net* @rtnl_get_net_ns_capable(i32 %65, i32 %66)
  store %struct.net* %67, %struct.net** %9, align 8
  %68 = load %struct.net*, %struct.net** %9, align 8
  %69 = call i64 @IS_ERR(%struct.net* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load %struct.net*, %struct.net** %9, align 8
  %73 = call i32 @PTR_ERR(%struct.net* %72)
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %184

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i64, i64* @IFLA_IFNAME, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i64, i64* @IFLA_IFNAME, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = load i32, i32* @IFNAMSIZ, align 4
  %85 = call i32 @nla_strlcpy(i8* %31, %struct.nlattr* %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i64, i64* @IFLA_EXT_MASK, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i64, i64* @IFLA_EXT_MASK, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @nla_get_u32(%struct.nlattr* %94)
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %17, align 4
  %99 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %100 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %99)
  store %struct.ifinfomsg* %100, %struct.ifinfomsg** %10, align 8
  %101 = load %struct.ifinfomsg*, %struct.ifinfomsg** %10, align 8
  %102 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.net*, %struct.net** %9, align 8
  %107 = load %struct.ifinfomsg*, %struct.ifinfomsg** %10, align 8
  %108 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call %struct.net_device* @__dev_get_by_index(%struct.net* %106, i64 %109)
  store %struct.net_device* %110, %struct.net_device** %14, align 8
  br label %121

111:                                              ; preds = %96
  %112 = load i64, i64* @IFLA_IFNAME, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = icmp ne %struct.nlattr* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.net*, %struct.net** %9, align 8
  %118 = call %struct.net_device* @__dev_get_by_name(%struct.net* %117, i8* %31)
  store %struct.net_device* %118, %struct.net_device** %14, align 8
  br label %120

119:                                              ; preds = %111
  br label %176

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %105
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %17, align 4
  %124 = load %struct.net_device*, %struct.net_device** %14, align 8
  %125 = icmp eq %struct.net_device* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %176

127:                                              ; preds = %121
  %128 = load i32, i32* @ENOBUFS, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %17, align 4
  %130 = load %struct.net_device*, %struct.net_device** %14, align 8
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @if_nlmsg_size(%struct.net_device* %130, i32 %131)
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call %struct.sk_buff* @nlmsg_new(i32 %132, i32 %133)
  store %struct.sk_buff* %134, %struct.sk_buff** %15, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %136 = icmp eq %struct.sk_buff* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %176

138:                                              ; preds = %127
  %139 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %140 = load %struct.net_device*, %struct.net_device** %14, align 8
  %141 = load %struct.net*, %struct.net** %8, align 8
  %142 = load i32, i32* @RTM_NEWLINK, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = call i64 @NETLINK_CB(%struct.sk_buff* %143)
  %145 = bitcast %struct.TYPE_2__* %21 to i64*
  store i64 %144, i64* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %149 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i32 @rtnl_fill_ifinfo(%struct.sk_buff* %139, %struct.net_device* %140, %struct.net* %141, i32 %142, i32 %147, i32 %150, i32 0, i32 0, i32 %151, i32 0, i32* null, i32 0, i32 %152, i32 %153)
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %138
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @EMSGSIZE, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @WARN_ON(i32 %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %165 = call i32 @kfree_skb(%struct.sk_buff* %164)
  br label %175

166:                                              ; preds = %138
  %167 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %168 = load %struct.net*, %struct.net** %8, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call i64 @NETLINK_CB(%struct.sk_buff* %169)
  %171 = bitcast %struct.TYPE_2__* %22 to i64*
  store i64 %170, i64* %171, align 4
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @rtnl_unicast(%struct.sk_buff* %167, %struct.net* %168, i32 %173)
  store i32 %174, i32* %17, align 4
  br label %175

175:                                              ; preds = %166, %157
  br label %176

176:                                              ; preds = %175, %137, %126, %119
  %177 = load i32, i32* %16, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load %struct.net*, %struct.net** %9, align 8
  %181 = call i32 @put_net(%struct.net* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %17, align 4
  store i32 %183, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %184

184:                                              ; preds = %182, %71, %49, %42
  %185 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rtnl_valid_getlink_req(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @rtnl_ensure_unique_netns(%struct.nlattr**, %struct.netlink_ext_ack*, i32) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net* @rtnl_get_net_ns_capable(i32, i32) #1

declare dso_local i64 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i8*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @if_nlmsg_size(%struct.net_device*, i32) #1

declare dso_local i32 @rtnl_fill_ifinfo(%struct.sk_buff*, %struct.net_device*, %struct.net*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

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
