; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_setlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_setlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ifinfomsg = type { i64 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_MAX = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_setlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_setlink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ifinfomsg*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %7, align 8
  %18 = load i32, i32* @IFLA_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @IFNAMSIZ, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %27 = load i32, i32* @IFLA_MAX, align 4
  %28 = load i32, i32* @ifla_policy, align 4
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %30 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %26, i32 8, %struct.nlattr** %22, i32 %27, i32 %28, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %90

34:                                               ; preds = %3
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %36 = call i32 @rtnl_ensure_unique_netns(%struct.nlattr** %22, %struct.netlink_ext_ack* %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %90

40:                                               ; preds = %34
  %41 = load i64, i64* @IFLA_IFNAME, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* @IFLA_IFNAME, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = call i32 @nla_strlcpy(i8* %25, %struct.nlattr* %48, i32 %49)
  br label %53

51:                                               ; preds = %40
  %52 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %52, align 16
  br label %53

53:                                               ; preds = %51, %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %57 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %56)
  store %struct.ifinfomsg* %57, %struct.ifinfomsg** %8, align 8
  %58 = load %struct.ifinfomsg*, %struct.ifinfomsg** %8, align 8
  %59 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.net*, %struct.net** %7, align 8
  %64 = load %struct.ifinfomsg*, %struct.ifinfomsg** %8, align 8
  %65 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.net_device* @__dev_get_by_index(%struct.net* %63, i64 %66)
  store %struct.net_device* %67, %struct.net_device** %9, align 8
  br label %78

68:                                               ; preds = %53
  %69 = load i64, i64* @IFLA_IFNAME, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp ne %struct.nlattr* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.net*, %struct.net** %7, align 8
  %75 = call %struct.net_device* @__dev_get_by_name(%struct.net* %74, i8* %25)
  store %struct.net_device* %75, %struct.net_device** %9, align 8
  br label %77

76:                                               ; preds = %68
  br label %90

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.net_device*, %struct.net_device** %9, align 8
  %80 = icmp eq %struct.net_device* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %90

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.net_device*, %struct.net_device** %9, align 8
  %87 = load %struct.ifinfomsg*, %struct.ifinfomsg** %8, align 8
  %88 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %89 = call i32 @do_setlink(%struct.sk_buff* %85, %struct.net_device* %86, %struct.ifinfomsg* %87, %struct.netlink_ext_ack* %88, %struct.nlattr** %22, i8* %25, i32 0)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %84, %81, %76, %39, %33
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @rtnl_ensure_unique_netns(%struct.nlattr**, %struct.netlink_ext_ack*, i32) #1

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @do_setlink(%struct.sk_buff*, %struct.net_device*, %struct.ifinfomsg*, %struct.netlink_ext_ack*, %struct.nlattr**, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
