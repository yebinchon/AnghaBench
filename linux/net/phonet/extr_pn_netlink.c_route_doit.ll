; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_route_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_route_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.rtmsg = type { i64, i64 }
%struct.nlattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@rtm_phonet_policy = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i64 0, align 8
@RTN_UNICAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i64 0, align 8
@RTA_OIF = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @route_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.rtmsg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @RTA_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* @CAP_NET_ADMIN, align 4
  %27 = call i32 @netlink_capable(%struct.sk_buff* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

32:                                               ; preds = %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %35 = call i32 @netlink_capable(%struct.sk_buff* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

40:                                               ; preds = %32
  %41 = call i32 (...) @ASSERT_RTNL()
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %43 = load i32, i32* @RTA_MAX, align 4
  %44 = load i32, i32* @rtm_phonet_policy, align 4
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %46 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %42, i32 16, %struct.nlattr** %24, i32 %43, i32 %44, %struct.netlink_ext_ack* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

51:                                               ; preds = %40
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %53 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %52)
  store %struct.rtmsg* %53, %struct.rtmsg** %12, align 8
  %54 = load %struct.rtmsg*, %struct.rtmsg** %12, align 8
  %55 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RT_TABLE_MAIN, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load %struct.rtmsg*, %struct.rtmsg** %12, align 8
  %61 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RTN_UNICAST, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59, %51
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

68:                                               ; preds = %59
  %69 = load i64, i64* @RTA_DST, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp eq %struct.nlattr* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @RTA_OIF, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = icmp eq %struct.nlattr* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

81:                                               ; preds = %73
  %82 = load i64, i64* @RTA_DST, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = call i32 @nla_get_u8(%struct.nlattr* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = and i32 %86, 3
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

92:                                               ; preds = %81
  %93 = load %struct.net*, %struct.net** %8, align 8
  %94 = load i64, i64* @RTA_OIF, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = call i32 @nla_get_u32(%struct.nlattr* %96)
  %98 = call %struct.net_device* @__dev_get_by_index(%struct.net* %93, i32 %97)
  store %struct.net_device* %98, %struct.net_device** %11, align 8
  %99 = load %struct.net_device*, %struct.net_device** %11, align 8
  %100 = icmp eq %struct.net_device* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

104:                                              ; preds = %92
  %105 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %106 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @RTM_NEWROUTE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.net_device*, %struct.net_device** %11, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @phonet_route_add(%struct.net_device* %111, i32 %112)
  store i32 %113, i32* %13, align 4
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.net_device*, %struct.net_device** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @phonet_route_del(%struct.net_device* %115, i32 %116)
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %123 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.net_device*, %struct.net_device** %11, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @rtm_phonet_notify(i64 %124, %struct.net_device* %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %118
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %130

130:                                              ; preds = %128, %101, %89, %78, %65, %49, %37, %29
  %131 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @phonet_route_add(%struct.net_device*, i32) #1

declare dso_local i32 @phonet_route_del(%struct.net_device*, i32) #1

declare dso_local i32 @rtm_phonet_notify(i64, %struct.net_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
