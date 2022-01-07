; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_valid_group_nh.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_valid_group_nh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32, i32, i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.nh_group = type { i64 }
%struct.nh_info = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"Multipath group can not be a nexthop within a group\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Blackhole nexthop can not be used in a group with more than 1 path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nexthop*, i32, %struct.netlink_ext_ack*)* @valid_group_nh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_group_nh(%struct.nexthop* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nexthop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nh_group*, align 8
  %9 = alloca %struct.nh_info*, align 8
  store %struct.nexthop* %0, %struct.nexthop** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %11 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %16 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @rtnl_dereference(i32 %17)
  %19 = bitcast i8* %18 to %struct.nh_group*
  store %struct.nh_group* %19, %struct.nh_group** %8, align 8
  %20 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %21 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %26 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %46

27:                                               ; preds = %14
  br label %45

28:                                               ; preds = %3
  %29 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %30 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @rtnl_dereference(i32 %31)
  %33 = bitcast i8* %32 to %struct.nh_info*
  store %struct.nh_info* %33, %struct.nh_info** %9, align 8
  %34 = load %struct.nh_info*, %struct.nh_info** %9, align 8
  %35 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %43 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %46

44:                                               ; preds = %38, %28
  br label %45

45:                                               ; preds = %44, %27
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
