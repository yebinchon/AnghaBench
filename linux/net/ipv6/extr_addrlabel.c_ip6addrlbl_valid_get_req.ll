; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_valid_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_valid_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifaddrlblmsg = type { i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"Invalid header for addrlabel get request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFAL_MAX = common dso_local global i32 0, align 4
@ifal_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid values in header for addrlabel get request\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unsupported attribute in addrlabel get request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ip6addrlbl_valid_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6addrlbl_valid_get_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ifaddrlblmsg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @nlmsg_msg_size(i32 24)
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %20 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %93

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @netlink_strict_get_check(%struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i32, i32* @IFAL_MAX, align 4
  %31 = load i32, i32* @ifal_policy, align 4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %33 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %28, i32 24, %struct.nlattr** %29, i32 %30, i32 %31, %struct.netlink_ext_ack* %32)
  store i32 %33, i32* %5, align 4
  br label %93

34:                                               ; preds = %23
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %36 = call %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.ifaddrlblmsg* %36, %struct.ifaddrlblmsg** %10, align 8
  %37 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %10, align 8
  %38 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %10, align 8
  %43 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %10, align 8
  %48 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %41, %34
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %53 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %93

56:                                               ; preds = %46
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %58 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %59 = load i32, i32* @IFAL_MAX, align 4
  %60 = load i32, i32* @ifal_policy, align 4
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %62 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %57, i32 24, %struct.nlattr** %58, i32 %59, i32 %60, %struct.netlink_ext_ack* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %93

67:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @IFAL_MAX, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %89

80:                                               ; preds = %72
  %81 = load i32, i32* %11, align 4
  switch i32 %81, label %83 [
    i32 128, label %82
  ]

82:                                               ; preds = %80
  br label %88

83:                                               ; preds = %80
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %85 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %93

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %68

92:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %83, %65, %51, %27, %18
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netlink_strict_get_check(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
