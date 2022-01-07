; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_valid_dump_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_valid_dump_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifaddrlblmsg = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [46 x i8] c"Invalid header for address label dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Invalid values in header for address label dump request\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Invalid data after header for address label dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.netlink_ext_ack*)* @ip6addrlbl_valid_dump_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6addrlbl_valid_dump_req(%struct.nlmsghdr* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.ifaddrlblmsg*, align 8
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
  %14 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %19 = call %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr* %18)
  store %struct.ifaddrlblmsg* %19, %struct.ifaddrlblmsg** %6, align 8
  %20 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %6, align 8
  %21 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %17
  %25 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %6, align 8
  %26 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %6, align 8
  %31 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %6, align 8
  %36 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %6, align 8
  %41 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %34, %29, %24, %17
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %46 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %39
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %51 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %50, i32 40)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %55 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %53, %44, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
