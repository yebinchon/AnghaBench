; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.dsa_notifier_bridge_info = type { %struct.net_device*, i32, i32 }

@DSA_NOTIFIER_BRIDGE_LEAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"DSA: failed to notify DSA_NOTIFIER_BRIDGE_LEAVE\0A\00", align 1
@BR_STATE_FORWARDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsa_port_bridge_leave(%struct.dsa_port* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dsa_notifier_bridge_info, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %5, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %8, %struct.net_device** %7, align 8
  %9 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %5, i32 0, i32 1
  %10 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 8
  %13 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %5, i32 0, i32 2
  %14 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %15 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %20 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %22 = load i32, i32* @DSA_NOTIFIER_BRIDGE_LEAVE, align 4
  %23 = call i32 @dsa_port_notify(%struct.dsa_port* %21, i32 %22, %struct.dsa_notifier_bridge_info* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %2
  %29 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %30 = call i32 @dsa_port_bridge_flags(%struct.dsa_port* %29, i32 0, i32* null)
  %31 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %32 = load i32, i32* @BR_STATE_FORWARDING, align 4
  %33 = call i32 @dsa_port_set_state_now(%struct.dsa_port* %31, i32 %32)
  ret void
}

declare dso_local i32 @dsa_port_notify(%struct.dsa_port*, i32, %struct.dsa_notifier_bridge_info*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dsa_port_bridge_flags(%struct.dsa_port*, i32, i32*) #1

declare dso_local i32 @dsa_port_set_state_now(%struct.dsa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
