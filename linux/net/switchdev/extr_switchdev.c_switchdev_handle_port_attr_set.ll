; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_handle_port_attr_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_handle_port_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_notifier_port_attr_info = type { i32 }
%struct.switchdev_attr = type opaque
%struct.switchdev_trans = type opaque
%struct.switchdev_attr.0 = type opaque
%struct.switchdev_trans.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @switchdev_handle_port_attr_set(%struct.net_device* %0, %struct.switchdev_notifier_port_attr_info* %1, i32 (%struct.net_device*)* %2, i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.switchdev_notifier_port_attr_info*, align 8
  %7 = alloca i32 (%struct.net_device*)*, align 8
  %8 = alloca i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.switchdev_notifier_port_attr_info* %1, %struct.switchdev_notifier_port_attr_info** %6, align 8
  store i32 (%struct.net_device*)* %2, i32 (%struct.net_device*)** %7, align 8
  store i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)* %3, i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load %struct.switchdev_notifier_port_attr_info*, %struct.switchdev_notifier_port_attr_info** %6, align 8
  %12 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %7, align 8
  %13 = load i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)*, i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)** %8, align 8
  %14 = bitcast i32 (%struct.net_device*, %struct.switchdev_attr*, %struct.switchdev_trans*)* %13 to i32 (%struct.net_device*, %struct.switchdev_attr.0*, %struct.switchdev_trans.1*)*
  %15 = call i32 @__switchdev_handle_port_attr_set(%struct.net_device* %10, %struct.switchdev_notifier_port_attr_info* %11, i32 (%struct.net_device*)* %12, i32 (%struct.net_device*, %struct.switchdev_attr.0*, %struct.switchdev_trans.1*)* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i32, i32* %9, align 4
  ret i32 %22
}

declare dso_local i32 @__switchdev_handle_port_attr_set(%struct.net_device*, %struct.switchdev_notifier_port_attr_info*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.switchdev_attr.0*, %struct.switchdev_trans.1*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
