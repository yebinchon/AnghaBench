; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.ifinfomsg = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IFLA_MAX = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i64 0, align 8
@IFLA_TARGET_NETNSID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFLA_GROUP = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_dellink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_dellink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ifinfomsg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %8, align 8
  %23 = load %struct.net*, %struct.net** %8, align 8
  store %struct.net* %23, %struct.net** %9, align 8
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %24 = load i32, i32* @IFNAMSIZ, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @IFLA_MAX, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca %struct.nlattr*, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  store i32 -1, i32* %16, align 4
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = load i32, i32* @IFLA_MAX, align 4
  %34 = load i32, i32* @ifla_policy, align 4
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %32, i32 8, %struct.nlattr** %31, i32 %33, i32 %34, %struct.netlink_ext_ack* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %149

41:                                               ; preds = %3
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %43 = call i32 @rtnl_ensure_unique_netns(%struct.nlattr** %31, %struct.netlink_ext_ack* %42, i32 1)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %149

48:                                               ; preds = %41
  %49 = load i64, i64* @IFLA_IFNAME, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i64, i64* @IFLA_IFNAME, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = load i32, i32* @IFNAMSIZ, align 4
  %58 = call i32 @nla_strlcpy(i8* %27, %struct.nlattr* %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %59
  %65 = load i64, i64* @IFLA_TARGET_NETNSID, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @nla_get_s32(%struct.nlattr* %67)
  store i32 %68, i32* %16, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @NETLINK_CB(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call %struct.net* @rtnl_get_net_ns_capable(i32 %73, i32 %74)
  store %struct.net* %75, %struct.net** %9, align 8
  %76 = load %struct.net*, %struct.net** %9, align 8
  %77 = call i64 @IS_ERR(%struct.net* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load %struct.net*, %struct.net** %9, align 8
  %81 = call i32 @PTR_ERR(%struct.net* %80)
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %149

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  %86 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %87 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %86)
  store %struct.ifinfomsg* %87, %struct.ifinfomsg** %11, align 8
  %88 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %89 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.net*, %struct.net** %9, align 8
  %94 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %95 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.net_device* @__dev_get_by_index(%struct.net* %93, i64 %96)
  store %struct.net_device* %97, %struct.net_device** %10, align 8
  br label %121

98:                                               ; preds = %83
  %99 = load i64, i64* @IFLA_IFNAME, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = icmp ne %struct.nlattr* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.net*, %struct.net** %9, align 8
  %105 = call %struct.net_device* @__dev_get_by_name(%struct.net* %104, i8* %27)
  store %struct.net_device* %105, %struct.net_device** %10, align 8
  br label %120

106:                                              ; preds = %98
  %107 = load i64, i64* @IFLA_GROUP, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.net*, %struct.net** %9, align 8
  %113 = load i64, i64* @IFLA_GROUP, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = call i32 @nla_get_u32(%struct.nlattr* %115)
  %117 = call i32 @rtnl_group_dellink(%struct.net* %112, i32 %116)
  store i32 %117, i32* %15, align 4
  br label %119

118:                                              ; preds = %106
  br label %141

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %103
  br label %121

121:                                              ; preds = %120, %92
  %122 = load %struct.net_device*, %struct.net_device** %10, align 8
  %123 = icmp ne %struct.net_device* %122, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* @IFLA_IFNAME, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = icmp ne %struct.nlattr* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %131 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %124
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %134, %129
  br label %141

138:                                              ; preds = %121
  %139 = load %struct.net_device*, %struct.net_device** %10, align 8
  %140 = call i32 @rtnl_delete_link(%struct.net_device* %139)
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %138, %137, %118
  %142 = load i32, i32* %16, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.net*, %struct.net** %9, align 8
  %146 = call i32 @put_net(%struct.net* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %149

149:                                              ; preds = %147, %79, %46, %39
  %150 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @rtnl_ensure_unique_netns(%struct.nlattr**, %struct.netlink_ext_ack*, i32) #1

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net* @rtnl_get_net_ns_capable(i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @rtnl_group_dellink(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @rtnl_delete_link(%struct.net_device*) #1

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
