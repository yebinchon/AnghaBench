; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_poll_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_poll_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops*, i32 }
%struct.net_device_ops = type { i32 (%struct.net_device.0*)* }
%struct.net_device.0 = type opaque
%struct.netpoll_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_poll_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netpoll_info*, align 8
  %4 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.netpoll_info* @rcu_dereference_bh(i32 %7)
  store %struct.netpoll_info* %8, %struct.netpoll_info** %3, align 8
  %9 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %10 = icmp ne %struct.netpoll_info* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %13 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %12, i32 0, i32 0
  %14 = call i64 @down_trylock(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %47

17:                                               ; preds = %11
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %23 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %22, i32 0, i32 0
  %24 = call i32 @up(i32* %23)
  br label %47

25:                                               ; preds = %17
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load %struct.net_device_ops*, %struct.net_device_ops** %27, align 8
  store %struct.net_device_ops* %28, %struct.net_device_ops** %4, align 8
  %29 = load %struct.net_device_ops*, %struct.net_device_ops** %4, align 8
  %30 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %30, align 8
  %32 = icmp ne i32 (%struct.net_device.0*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.net_device_ops*, %struct.net_device_ops** %4, align 8
  %35 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device.0*)*, i32 (%struct.net_device.0*)** %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = bitcast %struct.net_device* %37 to %struct.net_device.0*
  %39 = call i32 %36(%struct.net_device.0* %38)
  br label %40

40:                                               ; preds = %33, %25
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @poll_napi(%struct.net_device* %41)
  %43 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %44 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %43, i32 0, i32 0
  %45 = call i32 @up(i32* %44)
  %46 = call i32 (...) @zap_completion_queue()
  br label %47

47:                                               ; preds = %40, %21, %16
  ret void
}

declare dso_local %struct.netpoll_info* @rcu_dereference_bh(i32) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @poll_napi(%struct.net_device*) #1

declare dso_local i32 @zap_completion_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
