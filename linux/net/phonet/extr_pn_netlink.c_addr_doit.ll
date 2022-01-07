; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_addr_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_addr_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.ifaddrmsg = type { i32 }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ifa_phonet_policy = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RTM_NEWADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @addr_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.ifaddrmsg*, align 8
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
  %20 = load i32, i32* @IFA_MAX, align 4
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
  br label %109

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
  br label %109

40:                                               ; preds = %32
  %41 = call i32 (...) @ASSERT_RTNL()
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %43 = load i32, i32* @IFA_MAX, align 4
  %44 = load i32, i32* @ifa_phonet_policy, align 4
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %46 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %42, i32 4, %struct.nlattr** %24, i32 %43, i32 %44, %struct.netlink_ext_ack* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

51:                                               ; preds = %40
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %53 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %52)
  store %struct.ifaddrmsg* %53, %struct.ifaddrmsg** %12, align 8
  %54 = load i64, i64* @IFA_LOCAL, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp eq %struct.nlattr* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

61:                                               ; preds = %51
  %62 = load i64, i64* @IFA_LOCAL, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @nla_get_u8(%struct.nlattr* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

72:                                               ; preds = %61
  %73 = load %struct.net*, %struct.net** %8, align 8
  %74 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %12, align 8
  %75 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.net_device* @__dev_get_by_index(%struct.net* %73, i32 %76)
  store %struct.net_device* %77, %struct.net_device** %11, align 8
  %78 = load %struct.net_device*, %struct.net_device** %11, align 8
  %79 = icmp eq %struct.net_device* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

83:                                               ; preds = %72
  %84 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %85 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RTM_NEWADDR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.net_device*, %struct.net_device** %11, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @phonet_address_add(%struct.net_device* %90, i32 %91)
  store i32 %92, i32* %13, align 4
  br label %97

93:                                               ; preds = %83
  %94 = load %struct.net_device*, %struct.net_device** %11, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @phonet_address_del(%struct.net_device* %94, i32 %95)
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %102 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.net_device*, %struct.net_device** %11, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @phonet_address_notify(i64 %103, %struct.net_device* %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %107, %80, %69, %58, %49, %37, %29
  %110 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @phonet_address_add(%struct.net_device*, i32) #1

declare dso_local i32 @phonet_address_del(%struct.net_device*, i32) #1

declare dso_local i32 @phonet_address_notify(i64, %struct.net_device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
