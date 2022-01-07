; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_create_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_create_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.fib6_nh*)* }
%struct.net = type { i32 }
%struct.fib6_nh = type { i32 }
%struct.fib6_config = type { i32, i32, i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nexthop = type { i32 }
%struct.nh_info = type { %struct.fib6_nh }
%struct.nh_config = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@ipv6_stub = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nexthop*, %struct.nh_info*, %struct.nh_config*, %struct.netlink_ext_ack*)* @nh_create_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nh_create_ipv6(%struct.net* %0, %struct.nexthop* %1, %struct.nh_info* %2, %struct.nh_config* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nexthop*, align 8
  %8 = alloca %struct.nh_info*, align 8
  %9 = alloca %struct.nh_config*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.fib6_nh*, align 8
  %12 = alloca %struct.fib6_config, align 4
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nexthop* %1, %struct.nexthop** %7, align 8
  store %struct.nh_info* %2, %struct.nh_info** %8, align 8
  store %struct.nh_config* %3, %struct.nh_config** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %14 = load %struct.nh_info*, %struct.nh_info** %8, align 8
  %15 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %14, i32 0, i32 0
  store %struct.fib6_nh* %15, %struct.fib6_nh** %11, align 8
  %16 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %12, i32 0, i32 0
  %17 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %18 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %12, i32 0, i32 1
  %21 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %22 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %12, i32 0, i32 2
  %25 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %26 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %12, i32 0, i32 3
  %29 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %30 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %12, i32 0, i32 4
  %34 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %35 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %12, i32 0, i32 5
  %38 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %39 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @l3mdev_fib_table(i32 %40)
  store i32 %41, i32* %37, align 4
  %42 = load %struct.nh_config*, %struct.nh_config** %9, align 8
  %43 = getelementptr inbounds %struct.nh_config, %struct.nh_config* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @ipv6_addr_any(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %5
  %48 = load i32, i32* @RTF_GATEWAY, align 4
  %49 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipv6_stub, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*)** %54, align 8
  %56 = load %struct.net*, %struct.net** %6, align 8
  %57 = load %struct.fib6_nh*, %struct.fib6_nh** %11, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %60 = call i32 %55(%struct.net* %56, %struct.fib6_nh* %57, %struct.fib6_config* %12, i32 %58, %struct.netlink_ext_ack* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %52
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ipv6_stub, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.fib6_nh*)*, i32 (%struct.fib6_nh*)** %65, align 8
  %67 = load %struct.fib6_nh*, %struct.fib6_nh** %11, align 8
  %68 = call i32 %66(%struct.fib6_nh* %67)
  br label %75

69:                                               ; preds = %52
  %70 = load %struct.fib6_nh*, %struct.fib6_nh** %11, align 8
  %71 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %74 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load i32, i32* %13, align 4
  ret i32 %76
}

declare dso_local i32 @l3mdev_fib_table(i32) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
