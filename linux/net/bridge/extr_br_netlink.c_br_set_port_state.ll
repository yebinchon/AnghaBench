; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_set_port_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_set_port_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@BR_STATE_BLOCKING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BR_KERNEL_STP = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, i64)* @br_set_port_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_set_port_state(%struct.net_bridge_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i64, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %50

12:                                               ; preds = %2
  %13 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BR_KERNEL_STP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %12
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netif_running(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %31 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @netif_oper_up(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @BR_STATE_DISABLED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %23
  %40 = load i32, i32* @ENETDOWN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %35, %29
  %43 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @br_set_state(%struct.net_bridge_port* %43, i64 %44)
  %46 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %47 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @br_port_state_selection(%struct.TYPE_2__* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %39, %20, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @netif_oper_up(i32) #1

declare dso_local i32 @br_set_state(%struct.net_bridge_port*, i64) #1

declare dso_local i32 @br_port_state_selection(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
