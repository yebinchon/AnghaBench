; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_call_switchdev_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_call_switchdev_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_info = type { %struct.netlink_ext_ack*, %struct.net_device* }
%struct.netlink_ext_ack = type { i32 }

@switchdev_notif_chain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @call_switchdev_notifiers(i64 %0, %struct.net_device* %1, %struct.switchdev_notifier_info* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.switchdev_notifier_info*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.switchdev_notifier_info* %2, %struct.switchdev_notifier_info** %7, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = load %struct.switchdev_notifier_info*, %struct.switchdev_notifier_info** %7, align 8
  %11 = getelementptr inbounds %struct.switchdev_notifier_info, %struct.switchdev_notifier_info* %10, i32 0, i32 1
  store %struct.net_device* %9, %struct.net_device** %11, align 8
  %12 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %13 = load %struct.switchdev_notifier_info*, %struct.switchdev_notifier_info** %7, align 8
  %14 = getelementptr inbounds %struct.switchdev_notifier_info, %struct.switchdev_notifier_info* %13, i32 0, i32 0
  store %struct.netlink_ext_ack* %12, %struct.netlink_ext_ack** %14, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.switchdev_notifier_info*, %struct.switchdev_notifier_info** %7, align 8
  %17 = call i32 @atomic_notifier_call_chain(i32* @switchdev_notif_chain, i64 %15, %struct.switchdev_notifier_info* %16)
  ret i32 %17
}

declare dso_local i32 @atomic_notifier_call_chain(i32*, i64, %struct.switchdev_notifier_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
