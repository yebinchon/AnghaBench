; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neightbl_valid_dump_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neightbl_valid_dump_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.ndtmsg = type { i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"Invalid header for neighbor table dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Invalid values in header for neighbor table dump request\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Invalid data after header in neighbor table dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.netlink_ext_ack*)* @neightbl_valid_dump_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neightbl_valid_dump_info(%struct.nlmsghdr* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.ndtmsg*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %7 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %8 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @nlmsg_msg_size(i32 16)
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %14 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %19 = call %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr* %18)
  store %struct.ndtmsg* %19, %struct.ndtmsg** %6, align 8
  %20 = load %struct.ndtmsg*, %struct.ndtmsg** %6, align 8
  %21 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.ndtmsg*, %struct.ndtmsg** %6, align 8
  %26 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %17
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %31 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %30, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %36 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %35, i32 16)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %40 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38, %29, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
