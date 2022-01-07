; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_valid_getlink_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_valid_getlink_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifinfomsg = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid header for get link\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFLA_MAX = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid values in header for get link request\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Unsupported attribute in get link request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @rtnl_valid_getlink_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_valid_getlink_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ifinfomsg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @nlmsg_msg_size(i32 32)
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %20 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %98

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @netlink_strict_get_check(%struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i32, i32* @IFLA_MAX, align 4
  %31 = load i32, i32* @ifla_policy, align 4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %33 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %28, i32 32, %struct.nlattr** %29, i32 %30, i32 %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %5, align 4
  br label %98

34:                                               ; preds = %23
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %36 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.ifinfomsg* %36, %struct.ifinfomsg** %10, align 8
  %37 = load %struct.ifinfomsg*, %struct.ifinfomsg** %10, align 8
  %38 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %34
  %42 = load %struct.ifinfomsg*, %struct.ifinfomsg** %10, align 8
  %43 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.ifinfomsg*, %struct.ifinfomsg** %10, align 8
  %48 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.ifinfomsg*, %struct.ifinfomsg** %10, align 8
  %53 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51, %46, %41, %34
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %58 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %98

61:                                               ; preds = %51
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %64 = load i32, i32* @IFLA_MAX, align 4
  %65 = load i32, i32* @ifla_policy, align 4
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %67 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %62, i32 32, %struct.nlattr** %63, i32 %64, i32 %65, %struct.netlink_ext_ack* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %98

72:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @IFLA_MAX, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = icmp ne %struct.nlattr* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %94

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  switch i32 %86, label %88 [
    i32 129, label %87
    i32 130, label %87
    i32 128, label %87
  ]

87:                                               ; preds = %85, %85, %85
  br label %93

88:                                               ; preds = %85
  %89 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %90 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %98

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %84
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %73

97:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %88, %70, %56, %27, %18
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netlink_strict_get_check(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
