; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh_nongw.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_check_nh_nongw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_nh = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.in_device = type { %struct.TYPE_3__* }

@RTNH_F_PERVASIVE = common dso_local global i32 0, align 4
@RTNH_F_ONLINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Invalid flags for nexthop - PERVASIVE and ONLINK can not be set\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Device for nexthop is not up\00", align 1
@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib_nh*, %struct.netlink_ext_ack*)* @fib_check_nh_nongw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_check_nh_nongw(%struct.net* %0, %struct.fib_nh* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib_nh*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.fib_nh* %1, %struct.fib_nh** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %11 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RTNH_F_PERVASIVE, align 4
  %14 = load i32, i32* @RTNH_F_ONLINK, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %20 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.net*, %struct.net** %5, align 8
  %28 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %29 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.in_device* @inetdev_by_index(%struct.net* %27, i32 %30)
  store %struct.in_device* %31, %struct.in_device** %8, align 8
  %32 = load %struct.in_device*, %struct.in_device** %8, align 8
  %33 = icmp ne %struct.in_device* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %74

35:                                               ; preds = %23
  %36 = load i32, i32* @ENETDOWN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.in_device*, %struct.in_device** %8, align 8
  %39 = getelementptr inbounds %struct.in_device, %struct.in_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_UP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %48 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %74

49:                                               ; preds = %35
  %50 = load %struct.in_device*, %struct.in_device** %8, align 8
  %51 = getelementptr inbounds %struct.in_device, %struct.in_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %54 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %53, i32 0, i32 1
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  %55 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %56 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @dev_hold(%struct.TYPE_3__* %57)
  %59 = load i32, i32* @RT_SCOPE_HOST, align 4
  %60 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %61 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %63 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = call i32 @netif_carrier_ok(%struct.TYPE_3__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %49
  %68 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %69 = load %struct.fib_nh*, %struct.fib_nh** %6, align 8
  %70 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %49
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %46, %34
  %75 = call i32 (...) @rcu_read_unlock()
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.in_device* @inetdev_by_index(%struct.net*, i32) #1

declare dso_local i32 @dev_hold(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_carrier_ok(%struct.TYPE_3__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
