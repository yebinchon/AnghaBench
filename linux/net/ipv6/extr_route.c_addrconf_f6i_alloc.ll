; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_addrconf_f6i_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_addrconf_f6i_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32 }
%struct.net = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.in6_addr = type { i32 }
%struct.fib6_config = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, %struct.in6_addr, i32, i32 }
%struct.TYPE_3__ = type { %struct.net* }

@RTF_UP = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@RTPROT_KERNEL = common dso_local global i32 0, align 4
@RT6_TABLE_LOCAL = common dso_local global i32 0, align 4
@RTN_ANYCAST = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fib6_info* @addrconf_f6i_alloc(%struct.net* %0, %struct.inet6_dev* %1, %struct.in6_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib6_config, align 8
  %12 = alloca %struct.fib6_info*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %7, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 0
  %14 = load i32, i32* @RTF_UP, align 4
  %15 = load i32, i32* @RTF_NONEXTHOP, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 8
  %17 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 1
  store i32 128, i32* %17, align 4
  %18 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.net*, %struct.net** %6, align 8
  store %struct.net* %22, %struct.net** %21, align 8
  %23 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 5
  %24 = load i32, i32* @RTPROT_KERNEL, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 6
  %26 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %27 = bitcast %struct.in6_addr* %25 to i8*
  %28 = bitcast %struct.in6_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 7
  %30 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %31 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %29, align 8
  %35 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 8
  %36 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %37 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @l3mdev_fib_table(%struct.TYPE_4__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  br label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @RT6_TABLE_LOCAL, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ %39, %41 ], [ %43, %42 ]
  store i32 %45, i32* %35, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @RTN_ANYCAST, align 4
  %50 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @RTF_ANYCAST, align 4
  %52 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 8
  br label %62

55:                                               ; preds = %44
  %56 = load i32, i32* @RTN_LOCAL, align 4
  %57 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @RTF_LOCAL, align 4
  %59 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.fib6_info* @ip6_route_info_create(%struct.fib6_config* %11, i32 %63, i32* null)
  store %struct.fib6_info* %64, %struct.fib6_info** %12, align 8
  %65 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %66 = call i32 @IS_ERR(%struct.fib6_info* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  %70 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.fib6_info*, %struct.fib6_info** %12, align 8
  ret %struct.fib6_info* %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @l3mdev_fib_table(%struct.TYPE_4__*) #2

declare dso_local %struct.fib6_info* @ip6_route_info_create(%struct.fib6_config*, i32, i32*) #2

declare dso_local i32 @IS_ERR(%struct.fib6_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
