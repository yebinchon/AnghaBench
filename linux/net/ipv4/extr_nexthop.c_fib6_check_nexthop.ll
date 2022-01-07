; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_fib6_check_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_fib6_check_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32, i32, i64 }
%struct.fib6_config = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nh_info = type { i64 }
%struct.nh_group = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"IPv6 routes can not use an IPv4 nexthop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib6_check_nexthop(%struct.nexthop* %0, %struct.fib6_config* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nexthop*, align 8
  %6 = alloca %struct.fib6_config*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nh_info*, align 8
  %9 = alloca %struct.nh_group*, align 8
  store %struct.nexthop* %0, %struct.nexthop** %5, align 8
  store %struct.fib6_config* %1, %struct.fib6_config** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %11 = icmp ne %struct.fib6_config* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %14 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %13, i32 0, i32 0
  %15 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %16 = call i64 @check_src_addr(i32* %14, %struct.netlink_ext_ack* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %12, %3
  %22 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %23 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %28 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @rtnl_dereference(i32 %29)
  %31 = bitcast i8* %30 to %struct.nh_group*
  store %struct.nh_group* %31, %struct.nh_group** %9, align 8
  %32 = load %struct.nh_group*, %struct.nh_group** %9, align 8
  %33 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %52

37:                                               ; preds = %26
  br label %51

38:                                               ; preds = %21
  %39 = load %struct.nexthop*, %struct.nexthop** %5, align 8
  %40 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @rtnl_dereference(i32 %41)
  %43 = bitcast i8* %42 to %struct.nh_info*
  store %struct.nh_info* %43, %struct.nh_info** %8, align 8
  %44 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %45 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AF_INET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %52

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %37
  store i32 0, i32* %4, align 4
  br label %57

52:                                               ; preds = %49, %36
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %54 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %51, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @check_src_addr(i32*, %struct.netlink_ext_ack*) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
