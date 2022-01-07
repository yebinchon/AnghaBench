; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_netconf_valid_get_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_netconf_valid_get_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"ipv4: Invalid header for netconf get request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NETCONFA_MAX = common dso_local global i32 0, align 4
@devconf_ipv4_policy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ipv4: Unsupported attribute in netconf get request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @inet_netconf_valid_get_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_netconf_valid_get_req(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %13 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @nlmsg_msg_size(i32 4)
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %19 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %70

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @netlink_strict_get_check(%struct.sk_buff* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %29 = load i32, i32* @NETCONFA_MAX, align 4
  %30 = load i32, i32* @devconf_ipv4_policy, align 4
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %32 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %27, i32 4, %struct.nlattr** %28, i32 %29, i32 %30, %struct.netlink_ext_ack* %31)
  store i32 %32, i32* %5, align 4
  br label %70

33:                                               ; preds = %22
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %35 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %36 = load i32, i32* @NETCONFA_MAX, align 4
  %37 = load i32, i32* @devconf_ipv4_policy, align 4
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %39 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %34, i32 4, %struct.nlattr** %35, i32 %36, i32 %37, %struct.netlink_ext_ack* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %70

44:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NETCONFA_MAX, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %66

57:                                               ; preds = %49
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %60 [
    i32 128, label %59
  ]

59:                                               ; preds = %57
  br label %65

60:                                               ; preds = %57
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %62 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %70

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %56
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %45

69:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %60, %42, %26, %17
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netlink_strict_get_check(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
