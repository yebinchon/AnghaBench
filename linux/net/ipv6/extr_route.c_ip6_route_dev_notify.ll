; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_dev_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_route_dev_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, i64 }
%struct.net = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_11__* }
%struct.TYPE_17__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.net_device* }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.net_device* }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.net_device* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.net_device* }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@NETDEV_REGISTER = common dso_local global i64 0, align 8
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@NETREG_UNREGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ip6_route_dev_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_route_dev_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %10)
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call %struct.net* @dev_net(%struct.net_device* %12)
  store %struct.net* %13, %struct.net** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_LOOPBACK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %21, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @NETDEV_REGISTER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load %struct.net*, %struct.net** %9, align 8
  %29 = getelementptr inbounds %struct.net, %struct.net* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store %struct.net_device* %27, %struct.net_device** %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = load %struct.net*, %struct.net** %9, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store %struct.net_device* %35, %struct.net_device** %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = call i8* @in6_dev_get(%struct.net_device* %42)
  %44 = load %struct.net*, %struct.net** %9, align 8
  %45 = getelementptr inbounds %struct.net, %struct.net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  store i8* %43, i8** %48, align 8
  br label %67

49:                                               ; preds = %22
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NETREG_UNREGISTERED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.net*, %struct.net** %9, align 8
  %61 = getelementptr inbounds %struct.net, %struct.net* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = call i32 @in6_dev_put_clear(i8** %64)
  br label %66

66:                                               ; preds = %59, %53, %49
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i8* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @in6_dev_put_clear(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
