; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_fib_check_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_fib_check_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32, i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.nh_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nexthop* }

@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Route with host scope can not have multiple nexthops\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_check_nexthop(%struct.nexthop* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.nexthop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nh_group*, align 8
  store %struct.nexthop* %0, %struct.nexthop** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  %10 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @RT_SCOPE_HOST, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %19 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  %24 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.nh_group* @rtnl_dereference(i32 %25)
  store %struct.nh_group* %26, %struct.nh_group** %8, align 8
  %27 = load %struct.nh_group*, %struct.nh_group** %8, align 8
  %28 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.nexthop*, %struct.nexthop** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %35 = call i32 @nexthop_check_scope(%struct.nexthop* %32, i32 %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %7, align 4
  br label %41

36:                                               ; preds = %3
  %37 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %40 = call i32 @nexthop_check_scope(%struct.nexthop* %37, i32 %38, %struct.netlink_ext_ack* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %22
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nh_group* @rtnl_dereference(i32) #1

declare dso_local i32 @nexthop_check_scope(%struct.nexthop*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
