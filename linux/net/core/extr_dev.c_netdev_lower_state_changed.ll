; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_lower_state_changed.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_lower_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_notifier_changelowerstate_info = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { %struct.net_device* }

@NETDEV_CHANGELOWERSTATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdev_lower_state_changed(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netdev_notifier_changelowerstate_info, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, %struct.netdev_notifier_changelowerstate_info* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  store %struct.net_device* %8, %struct.net_device** %7, align 8
  %9 = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, %struct.netdev_notifier_changelowerstate_info* %5, i32 0, i32 1
  store i8* null, i8** %9, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, %struct.netdev_notifier_changelowerstate_info* %5, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @NETDEV_CHANGELOWERSTATE, align 4
  %14 = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, %struct.netdev_notifier_changelowerstate_info* %5, i32 0, i32 0
  %15 = call i32 @call_netdevice_notifiers_info(i32 %13, %struct.TYPE_2__* %14)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @call_netdevice_notifiers_info(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
