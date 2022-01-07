; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_check_scope.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_check_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nh_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@RT_SCOPE_HOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Route with host scope can not have a gateway\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTNH_F_ONLINK = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Scope mismatch with nexthop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nexthop*, i64, %struct.netlink_ext_ack*)* @nexthop_check_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexthop_check_scope(%struct.nexthop* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nexthop*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nh_info*, align 8
  store %struct.nexthop* %0, %struct.nexthop** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %10 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nh_info* @rtnl_dereference(i32 %11)
  store %struct.nh_info* %12, %struct.nh_info** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @RT_SCOPE_HOST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %18 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %24 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %16, %3
  %28 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %29 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RTNH_F_ONLINK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @RT_SCOPE_LINK, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %41 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %35, %27
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %39, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nh_info* @rtnl_dereference(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
