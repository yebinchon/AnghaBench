; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_check_nh_onlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_check_nh_onlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_config = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib6_result = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Nexthop has invalid gateway or device mismatch\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib6_config*, %struct.net_device*, %struct.netlink_ext_ack*)* @ip6_route_check_nh_onlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_route_check_nh_onlink(%struct.net* %0, %struct.fib6_config* %1, %struct.net_device* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib6_config*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.fib6_result, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.fib6_config* %1, %struct.fib6_config** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call i64 @l3mdev_fib_table_rcu(%struct.net_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @RT_TABLE_MAIN, align 4
  %19 = sext i32 %18 to i64
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i64 [ %14, %16 ], [ %19, %17 ]
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %24 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %23, i32 0, i32 0
  store %struct.in6_addr* %24, %struct.in6_addr** %10, align 8
  %25 = bitcast %struct.fib6_result* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = load %struct.fib6_config*, %struct.fib6_config** %6, align 8
  %28 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ip6_nh_lookup_table(%struct.net* %26, %struct.fib6_config* %27, %struct.in6_addr* %28, i32 %29, i32 0, %struct.fib6_result* %11)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RTF_REJECT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @ipv6_addr_any(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RTN_UNICAST, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %11, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.net_device*, %struct.net_device** %55, align 8
  %57 = icmp ne %struct.net_device* %52, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51, %46
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %60 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %51, %39, %33, %20
  %64 = load i32, i32* %12, align 4
  ret i32 %64
}

declare dso_local i64 @l3mdev_fib_table_rcu(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ip6_nh_lookup_table(%struct.net*, %struct.fib6_config*, %struct.in6_addr*, i32, i32, %struct.fib6_result*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
