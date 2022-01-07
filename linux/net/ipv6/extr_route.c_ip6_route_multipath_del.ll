; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_multipath_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_multipath_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_config = type { i32, i32, i32, i64, i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.rtnexthop = type { i64 }
%struct.nlattr = type { i32 }

@RTA_GATEWAY = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_config*, %struct.netlink_ext_ack*)* @ip6_route_multipath_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_route_multipath_del(%struct.fib6_config* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.fib6_config*, align 8
  %4 = alloca %struct.netlink_ext_ack*, align 8
  %5 = alloca %struct.fib6_config, align 8
  %6 = alloca %struct.rtnexthop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  store %struct.fib6_config* %0, %struct.fib6_config** %3, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %4, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %14 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %17 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.rtnexthop*
  store %struct.rtnexthop* %19, %struct.rtnexthop** %6, align 8
  br label %20

20:                                               ; preds = %67, %2
  %21 = load %struct.rtnexthop*, %struct.rtnexthop** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @rtnh_ok(%struct.rtnexthop* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %20
  %26 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %27 = call i32 @memcpy(%struct.fib6_config* %5, %struct.fib6_config* %26, i32 32)
  %28 = load %struct.rtnexthop*, %struct.rtnexthop** %6, align 8
  %29 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.rtnexthop*, %struct.rtnexthop** %6, align 8
  %34 = getelementptr inbounds %struct.rtnexthop, %struct.rtnexthop* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %5, i32 0, i32 3
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.rtnexthop*, %struct.rtnexthop** %6, align 8
  %39 = call i32 @rtnh_attrlen(%struct.rtnexthop* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.rtnexthop*, %struct.rtnexthop** %6, align 8
  %44 = call %struct.nlattr* @rtnh_attrs(%struct.rtnexthop* %43)
  store %struct.nlattr* %44, %struct.nlattr** %12, align 8
  %45 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @RTA_GATEWAY, align 4
  %48 = call %struct.nlattr* @nla_find(%struct.nlattr* %45, i32 %46, i32 %47)
  store %struct.nlattr* %48, %struct.nlattr** %11, align 8
  %49 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %5, i32 0, i32 2
  %53 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %54 = call i32 @nla_memcpy(i32* %52, %struct.nlattr* %53, i32 16)
  %55 = load i32, i32* @RTF_GATEWAY, align 4
  %56 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %42
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %4, align 8
  %62 = call i32 @ip6_route_del(%struct.fib6_config* %5, %struct.netlink_ext_ack* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load %struct.rtnexthop*, %struct.rtnexthop** %6, align 8
  %69 = call %struct.rtnexthop* @rtnh_next(%struct.rtnexthop* %68, i32* %7)
  store %struct.rtnexthop* %69, %struct.rtnexthop** %6, align 8
  br label %20

70:                                               ; preds = %20
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local i64 @rtnh_ok(%struct.rtnexthop*, i32) #1

declare dso_local i32 @memcpy(%struct.fib6_config*, %struct.fib6_config*, i32) #1

declare dso_local i32 @rtnh_attrlen(%struct.rtnexthop*) #1

declare dso_local %struct.nlattr* @rtnh_attrs(%struct.rtnexthop*) #1

declare dso_local %struct.nlattr* @nla_find(%struct.nlattr*, i32, i32) #1

declare dso_local i32 @nla_memcpy(i32*, %struct.nlattr*, i32) #1

declare dso_local i32 @ip6_route_del(%struct.fib6_config*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.rtnexthop* @rtnh_next(%struct.rtnexthop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
