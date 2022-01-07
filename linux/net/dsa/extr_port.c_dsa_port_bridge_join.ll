; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { %struct.net_device*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.dsa_notifier_bridge_info = type { %struct.net_device*, i32, i32 }

@BR_FLOOD = common dso_local global i32 0, align 4
@BR_MCAST_FLOOD = common dso_local global i32 0, align 4
@DSA_NOTIFIER_BRIDGE_JOIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsa_port_bridge_join(%struct.dsa_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_port*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_notifier_bridge_info, align 8
  %7 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %6, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %9, %struct.net_device** %8, align 8
  %10 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %6, i32 0, i32 1
  %11 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %12 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 8
  %14 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %6, i32 0, i32 2
  %15 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %21 = load i32, i32* @BR_FLOOD, align 4
  %22 = load i32, i32* @BR_MCAST_FLOOD, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @dsa_port_bridge_flags(%struct.dsa_port* %20, i32 %23, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %32 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %31, i32 0, i32 0
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %34 = load i32, i32* @DSA_NOTIFIER_BRIDGE_JOIN, align 4
  %35 = call i32 @dsa_port_notify(%struct.dsa_port* %33, i32 %34, %struct.dsa_notifier_bridge_info* %6)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %40 = call i32 @dsa_port_bridge_flags(%struct.dsa_port* %39, i32 0, i32* null)
  %41 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %42 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %41, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %42, align 8
  br label %43

43:                                               ; preds = %38, %29
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dsa_port_bridge_flags(%struct.dsa_port*, i32, i32*) #1

declare dso_local i32 @dsa_port_notify(%struct.dsa_port*, i32, %struct.dsa_notifier_bridge_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
