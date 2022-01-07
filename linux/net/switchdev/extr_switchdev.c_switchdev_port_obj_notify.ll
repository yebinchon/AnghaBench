; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }
%struct.switchdev_trans = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.switchdev_notifier_port_obj_info = type { i32, i32, %struct.switchdev_trans*, %struct.switchdev_obj* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.net_device*, %struct.switchdev_obj*, %struct.switchdev_trans*, %struct.netlink_ext_ack*)* @switchdev_port_obj_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchdev_port_obj_notify(i32 %0, %struct.net_device* %1, %struct.switchdev_obj* %2, %struct.switchdev_trans* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.switchdev_obj*, align 8
  %10 = alloca %struct.switchdev_trans*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.switchdev_notifier_port_obj_info, align 8
  store i32 %0, i32* %7, align 4
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.switchdev_obj* %2, %struct.switchdev_obj** %9, align 8
  store %struct.switchdev_trans* %3, %struct.switchdev_trans** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %14, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %14, i32 0, i32 2
  %18 = load %struct.switchdev_trans*, %struct.switchdev_trans** %10, align 8
  store %struct.switchdev_trans* %18, %struct.switchdev_trans** %17, align 8
  %19 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %14, i32 0, i32 3
  %20 = load %struct.switchdev_obj*, %struct.switchdev_obj** %9, align 8
  store %struct.switchdev_obj* %20, %struct.switchdev_obj** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %14, i32 0, i32 1
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %25 = call i32 @call_switchdev_blocking_notifiers(i32 %21, %struct.net_device* %22, i32* %23, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @notifier_to_errno(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %14, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %46

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, %struct.switchdev_notifier_port_obj_info* %14, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %46

45:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %42, %30
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @call_switchdev_blocking_notifiers(i32, %struct.net_device*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
