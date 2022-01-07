; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh_v6_gw.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh_v6_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.fib6_nh*)* }
%struct.net = type { i32 }
%struct.fib6_nh = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fib6_config = type { i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib_nh = type { i32, i32, %struct.TYPE_4__*, i32, i32 }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@ipv6_stub = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@RT_SCOPE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib_nh*, i32, %struct.netlink_ext_ack*)* @fib_check_nh_v6_gw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_check_nh_v6_gw(%struct.net* %0, %struct.fib_nh* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib_nh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.fib6_config, align 4
  %10 = alloca %struct.fib6_nh, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.fib_nh* %1, %struct.fib_nh** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %12 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 0
  %13 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %14 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RTF_GATEWAY, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 1
  %19 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %20 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 2
  %23 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %24 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %9, i32 0, i32 3
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %26, align 4
  %28 = bitcast %struct.fib6_nh* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 8, i1 false)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipv6_stub, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*)** %30, align 8
  %32 = load %struct.net*, %struct.net** %5, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %35 = call i32 %31(%struct.net* %32, %struct.fib6_nh* %10, %struct.fib6_config* %9, i32 %33, %struct.netlink_ext_ack* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %10, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %42 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %41, i32 0, i32 2
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %44 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @dev_hold(%struct.TYPE_4__* %45)
  %47 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %48 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %53 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @RT_SCOPE_LINK, align 4
  %55 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %56 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipv6_stub, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32 (%struct.fib6_nh*)*, i32 (%struct.fib6_nh*)** %58, align 8
  %60 = call i32 %59(%struct.fib6_nh* %10)
  br label %61

61:                                               ; preds = %38, %4
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_hold(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
