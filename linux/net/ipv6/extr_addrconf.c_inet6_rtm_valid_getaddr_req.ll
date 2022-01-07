; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_valid_getaddr_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_rtm_valid_getaddr_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifaddrmsg = type { i64, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Invalid header for get address request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Invalid values in header for get address request\00", align 1
@IFA_MAX = common dso_local global i32 0, align 4
@ifa_ipv6_policy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Unsupported attribute in get address request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @inet6_rtm_valid_getaddr_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_rtm_valid_getaddr_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ifaddrmsg*, align 8
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
  %20 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %93

23:                                               ; preds = %4
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %25 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %24)
  store %struct.ifaddrmsg* %25, %struct.ifaddrmsg** %10, align 8
  %26 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %10, align 8
  %27 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %10, align 8
  %32 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %10, align 8
  %37 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %30, %23
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %42 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %93

45:                                               ; preds = %35
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @netlink_strict_get_check(%struct.sk_buff* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %51 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %52 = load i32, i32* @IFA_MAX, align 4
  %53 = load i32, i32* @ifa_ipv6_policy, align 4
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %55 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %50, i32 24, %struct.nlattr** %51, i32 %52, i32 %53, %struct.netlink_ext_ack* %54)
  store i32 %55, i32* %5, align 4
  br label %93

56:                                               ; preds = %45
  %57 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %58 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %59 = load i32, i32* @IFA_MAX, align 4
  %60 = load i32, i32* @ifa_ipv6_policy, align 4
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
  %70 = load i32, i32* @IFA_MAX, align 4
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
    i32 130, label %82
    i32 129, label %82
  ]

82:                                               ; preds = %80, %80, %80
  br label %88

83:                                               ; preds = %80
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %85 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
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

93:                                               ; preds = %92, %83, %65, %49, %40, %18
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @netlink_strict_get_check(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
