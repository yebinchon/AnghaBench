; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_nh_lookup_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_nh_lookup_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fib6_config = type { i64, i32 }
%struct.in6_addr = type { i32 }
%struct.fib6_result = type { i64 }
%struct.flowi6 = type { i64, i32, %struct.in6_addr }
%struct.fib6_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IGNORE_LINKSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib6_config*, %struct.in6_addr*, i32, i32, %struct.fib6_result*)* @ip6_nh_lookup_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_nh_lookup_table(%struct.net* %0, %struct.fib6_config* %1, %struct.in6_addr* %2, i32 %3, i32 %4, %struct.fib6_result* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.fib6_config*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fib6_result*, align 8
  %14 = alloca %struct.flowi6, align 8
  %15 = alloca %struct.fib6_table*, align 8
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.fib6_config* %1, %struct.fib6_config** %9, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fib6_result* %5, %struct.fib6_result** %13, align 8
  %17 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 0
  %18 = load %struct.fib6_config*, %struct.fib6_config** %9, align 8
  %19 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %17, align 8
  %21 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 1
  %22 = load %struct.fib6_config*, %struct.fib6_config** %9, align 8
  %23 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %14, i32 0, i32 2
  %26 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %27 = bitcast %struct.in6_addr* %25 to i8*
  %28 = bitcast %struct.in6_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.fib6_table* @fib6_get_table(%struct.net* %29, i32 %30)
  store %struct.fib6_table* %31, %struct.fib6_table** %15, align 8
  %32 = load %struct.fib6_table*, %struct.fib6_table** %15, align 8
  %33 = icmp ne %struct.fib6_table* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %84

37:                                               ; preds = %6
  %38 = load %struct.fib6_config*, %struct.fib6_config** %9, align 8
  %39 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %38, i32 0, i32 1
  %40 = call i32 @ipv6_addr_any(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* @RT6_LOOKUP_F_IGNORE_LINKSTATE, align 4
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load %struct.net*, %struct.net** %8, align 8
  %51 = load %struct.fib6_table*, %struct.fib6_table** %15, align 8
  %52 = load %struct.fib6_config*, %struct.fib6_config** %9, align 8
  %53 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @fib6_table_lookup(%struct.net* %50, %struct.fib6_table* %51, i64 %54, %struct.flowi6* %14, %struct.fib6_result* %55, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %46
  %61 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %62 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.net*, %struct.net** %8, align 8
  %65 = getelementptr inbounds %struct.net, %struct.net* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %60
  %70 = load %struct.net*, %struct.net** %8, align 8
  %71 = load %struct.fib6_result*, %struct.fib6_result** %13, align 8
  %72 = load %struct.fib6_config*, %struct.fib6_config** %9, align 8
  %73 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.fib6_config*, %struct.fib6_config** %9, align 8
  %76 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @fib6_select_path(%struct.net* %70, %struct.fib6_result* %71, %struct.flowi6* %14, i64 %74, i32 %79, i32* null, i32 %80)
  br label %82

82:                                               ; preds = %69, %60, %46
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %34
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.fib6_table* @fib6_get_table(%struct.net*, i32) #2

declare dso_local i32 @ipv6_addr_any(i32*) #2

declare dso_local i32 @fib6_table_lookup(%struct.net*, %struct.fib6_table*, i64, %struct.flowi6*, %struct.fib6_result*, i32) #2

declare dso_local i32 @fib6_select_path(%struct.net*, %struct.fib6_result*, %struct.flowi6*, i64, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
