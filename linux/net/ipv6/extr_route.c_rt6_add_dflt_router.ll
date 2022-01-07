; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_add_dflt_router.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_add_dflt_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32 }
%struct.net = type { i32 }
%struct.in6_addr = type { i32 }
%struct.net_device = type { i32 }
%struct.fib6_config = type { i32, i32, %struct.in6_addr, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.net*, i32*, i32 }
%struct.fib6_table = type { i32 }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_ADDRCONF = common dso_local global i32 0, align 4
@RTF_DEFAULT = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_EXPIRES = common dso_local global i32 0, align 4
@RT6_TABLE_DFLT = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@RTPROT_RA = common dso_local global i32 0, align 4
@IP6_RT_PRIO_USER = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RT6_TABLE_HAS_DFLT_ROUTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fib6_info* @rt6_add_dflt_router(%struct.net* %0, %struct.in6_addr* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib6_config, align 8
  %10 = alloca %struct.fib6_table*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 0
  %12 = load i32, i32* @RTF_GATEWAY, align 4
  %13 = load i32, i32* @RTF_ADDRCONF, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RTF_DEFAULT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RTF_UP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RTF_EXPIRES, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @RTF_PREF(i32 %21)
  %23 = or i32 %20, %22
  store i32 %23, i32* %11, align 8
  %24 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 1
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = call i32 @l3mdev_fib_table(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @RT6_TABLE_DFLT, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ %26, %28 ], [ %30, %29 ]
  store i32 %32, i32* %24, align 4
  %33 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 2
  %34 = bitcast %struct.in6_addr* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 4, i1 false)
  %35 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.net*, %struct.net** %5, align 8
  store %struct.net* %37, %struct.net** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 4
  %41 = load i32, i32* @RTN_UNICAST, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 5
  %43 = load i32, i32* @RTPROT_RA, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 6
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %44, align 8
  %48 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 7
  %49 = load i32, i32* @IP6_RT_PRIO_USER, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 2
  %51 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %52 = bitcast %struct.in6_addr* %50 to i8*
  %53 = bitcast %struct.in6_addr* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i32 @ip6_route_add(%struct.fib6_config* %9, i32 %54, i32* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %31
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @dev_net(%struct.net_device* %58)
  %60 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.fib6_table* @fib6_get_table(i32 %59, i32 %61)
  store %struct.fib6_table* %62, %struct.fib6_table** %10, align 8
  %63 = load %struct.fib6_table*, %struct.fib6_table** %10, align 8
  %64 = icmp ne %struct.fib6_table* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i32, i32* @RT6_TABLE_HAS_DFLT_ROUTER, align 4
  %67 = load %struct.fib6_table*, %struct.fib6_table** %10, align 8
  %68 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %57
  br label %72

72:                                               ; preds = %71, %31
  %73 = load %struct.net*, %struct.net** %5, align 8
  %74 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %75 = load %struct.net_device*, %struct.net_device** %7, align 8
  %76 = call %struct.fib6_info* @rt6_get_dflt_router(%struct.net* %73, %struct.in6_addr* %74, %struct.net_device* %75)
  ret %struct.fib6_info* %76
}

declare dso_local i32 @RTF_PREF(i32) #1

declare dso_local i32 @l3mdev_fib_table(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ip6_route_add(%struct.fib6_config*, i32, i32*) #1

declare dso_local %struct.fib6_table* @fib6_get_table(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.fib6_info* @rt6_get_dflt_router(%struct.net*, %struct.in6_addr*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
