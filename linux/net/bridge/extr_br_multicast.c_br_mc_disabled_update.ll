; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_mc_disabled_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_mc_disabled_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_attr = type { %struct.TYPE_2__, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }

@SWITCHDEV_F_DEFER = common dso_local global i32 0, align 4
@SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @br_mc_disabled_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_mc_disabled_update(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.switchdev_attr, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %7, align 8
  %12 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 1
  %13 = load i32, i32* @SWITCHDEV_F_DEFER, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 2
  %15 = load i32, i32* @SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %5, i32 0, i32 3
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %17, %struct.net_device** %16, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @switchdev_port_attr_set(%struct.net_device* %18, %struct.switchdev_attr* %5)
  ret void
}

declare dso_local i32 @switchdev_port_attr_set(%struct.net_device*, %struct.switchdev_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
