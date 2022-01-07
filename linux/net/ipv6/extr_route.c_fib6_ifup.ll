; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_ifup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_fib6_ifup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.arg_netdev_event = type { i64, i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fib6_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_info*, i8*)* @fib6_ifup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_ifup(%struct.fib6_info* %0, i8* %1) #0 {
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arg_netdev_event*, align 8
  %6 = alloca %struct.net*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.arg_netdev_event*
  store %struct.arg_netdev_event* %8, %struct.arg_netdev_event** %5, align 8
  %9 = load %struct.arg_netdev_event*, %struct.arg_netdev_event** %5, align 8
  %10 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.net* @dev_net(i64 %11)
  store %struct.net* %12, %struct.net** %6, align 8
  %13 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.fib6_info*, %struct.fib6_info** %16, align 8
  %18 = icmp ne %struct.fib6_info* %13, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %21 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %26 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.arg_netdev_event*, %struct.arg_netdev_event** %5, align 8
  %31 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load %struct.arg_netdev_event*, %struct.arg_netdev_event** %5, align 8
  %36 = getelementptr inbounds %struct.arg_netdev_event, %struct.arg_netdev_event* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = xor i32 %37, -1
  %39 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %40 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %38
  store i32 %44, i32* %42, align 8
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %47 = call i32 @fib6_update_sernum_upto_root(%struct.net* %45, %struct.fib6_info* %46)
  %48 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %49 = call i32 @rt6_multipath_rebalance(%struct.fib6_info* %48)
  br label %50

50:                                               ; preds = %34, %24, %19, %2
  ret i32 0
}

declare dso_local %struct.net* @dev_net(i64) #1

declare dso_local i32 @fib6_update_sernum_upto_root(%struct.net*, %struct.fib6_info*) #1

declare dso_local i32 @rt6_multipath_rebalance(%struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
