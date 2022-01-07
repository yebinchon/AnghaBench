; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_valid_dump_ifinfo_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_valid_dump_ifinfo_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifinfomsg = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid header for link dump\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid values in header for link dump request\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Filter by device index not supported for link dumps\00", align 1
@IFLA_MAX = common dso_local global i32 0, align 4
@ifla_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, i32, %struct.nlattr**, %struct.netlink_ext_ack*)* @rtnl_valid_dump_ifinfo_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_valid_dump_ifinfo_req(%struct.nlmsghdr* %0, i32 %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifinfomsg*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %4
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @nlmsg_msg_size(i32 40)
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %22 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %84

25:                                               ; preds = %14
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.ifinfomsg* %27, %struct.ifinfomsg** %11, align 8
  %28 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %29 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %25
  %33 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %34 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %39 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %44 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42, %37, %32, %25
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %49 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %84

52:                                               ; preds = %42
  %53 = load %struct.ifinfomsg*, %struct.ifinfomsg** %11, align 8
  %54 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %84

62:                                               ; preds = %52
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %64 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %65 = load i32, i32* @IFLA_MAX, align 4
  %66 = load i32, i32* @ifla_policy, align 4
  %67 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %68 = call i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr* %63, i32 40, %struct.nlattr** %64, i32 %65, i32 %66, %struct.netlink_ext_ack* %67)
  store i32 %68, i32* %5, align 4
  br label %84

69:                                               ; preds = %4
  %70 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %71 = call i32 @nlmsg_len(%struct.nlmsghdr* %70)
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 40
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i64 4, i64 40
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %80 = load i32, i32* @IFLA_MAX, align 4
  %81 = load i32, i32* @ifla_policy, align 4
  %82 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %83 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %77, i32 %78, %struct.nlattr** %79, i32 %80, i32 %81, %struct.netlink_ext_ack* %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %69, %62, %57, %47, %20
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_parse_deprecated_strict(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
