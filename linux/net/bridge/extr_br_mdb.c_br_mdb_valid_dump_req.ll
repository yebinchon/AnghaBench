; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_br_mdb_valid_dump_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_mdb.c_br_mdb_valid_dump_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsghdr = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.br_port_msg = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"Invalid header for mdb dump request\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Filtering by device index is not supported for mdb dump request\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid data after header in mdb dump request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlmsghdr*, %struct.netlink_ext_ack*)* @br_mdb_valid_dump_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_mdb_valid_dump_req(%struct.nlmsghdr* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca %struct.br_port_msg*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %4, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  %7 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %8 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @nlmsg_msg_size(i32 8)
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %14 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %19 = call %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr* %18)
  store %struct.br_port_msg* %19, %struct.br_port_msg** %6, align 8
  %20 = load %struct.br_port_msg*, %struct.br_port_msg** %6, align 8
  %21 = getelementptr inbounds %struct.br_port_msg, %struct.br_port_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %17
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %31 = call i64 @nlmsg_attrlen(%struct.nlmsghdr* %30, i32 8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %35 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33, %24, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @nlmsg_msg_size(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.br_port_msg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
