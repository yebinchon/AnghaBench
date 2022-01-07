; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_valid_dumplink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_valid_dumplink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifinfomsg = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"ipv4: Invalid header for ipmr link dump\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid data after header in ipmr link dump\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Invalid values in header for ipmr link dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.netlink_ext_ack*)* @ipmr_valid_dumplink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_valid_dumplink(%struct.nlmsghdr* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.ifinfomsg*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %7 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %8 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @nlmsg_msg_size(i32 40)
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %14 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %19 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %18, i32 40)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %23 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %17
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %28 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %27)
  store %struct.ifinfomsg* %28, %struct.ifinfomsg** %6, align 8
  %29 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %30 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %26
  %34 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %35 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %40 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %45 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8
  %50 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %43, %38, %33, %26
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %55 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %53, %21, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
