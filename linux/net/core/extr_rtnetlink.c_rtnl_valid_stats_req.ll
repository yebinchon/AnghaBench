; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_valid_stats_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_valid_stats_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.if_stats_msg = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid header for stats dump\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid values in header for stats dump request\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid attributes after stats header\00", align 1
@IFLA_STATS_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid stats requested through filter mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32, i32, %struct.netlink_ext_ack*)* @rtnl_valid_stats_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_valid_stats_req(%struct.nlmsghdr* %0, i32 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.if_stats_msg*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %12 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @nlmsg_msg_size(i32 32)
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %18 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %73

25:                                               ; preds = %21
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.if_stats_msg* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.if_stats_msg* %27, %struct.if_stats_msg** %10, align 8
  %28 = load %struct.if_stats_msg*, %struct.if_stats_msg** %10, align 8
  %29 = getelementptr inbounds %struct.if_stats_msg, %struct.if_stats_msg* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = load %struct.if_stats_msg*, %struct.if_stats_msg** %10, align 8
  %34 = getelementptr inbounds %struct.if_stats_msg, %struct.if_stats_msg* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.if_stats_msg*, %struct.if_stats_msg** %10, align 8
  %42 = getelementptr inbounds %struct.if_stats_msg, %struct.if_stats_msg* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %32, %25
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %47 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %73

50:                                               ; preds = %40, %37
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %52 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %51, i32 32)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %56 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %73

59:                                               ; preds = %50
  %60 = load %struct.if_stats_msg*, %struct.if_stats_msg** %10, align 8
  %61 = getelementptr inbounds %struct.if_stats_msg, %struct.if_stats_msg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IFLA_STATS_MAX, align 8
  %64 = add nsw i64 %63, 1
  %65 = call i64 @IFLA_STATS_FILTER_BIT(i64 %64)
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %69 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %67, %54, %45, %24, %16
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.if_stats_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

declare dso_local i64 @IFLA_STATS_FILTER_BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
