; ModuleID = '/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/switchdev/extr_switchdev.c_switchdev_port_obj_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_obj = type { i32 }

@SWITCHDEV_F_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @switchdev_port_obj_del(%struct.net_device* %0, %struct.switchdev_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.switchdev_obj*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.switchdev_obj* %1, %struct.switchdev_obj** %5, align 8
  %6 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %7 = getelementptr inbounds %struct.switchdev_obj, %struct.switchdev_obj* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SWITCHDEV_F_DEFER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %15 = call i32 @switchdev_port_obj_del_defer(%struct.net_device* %13, %struct.switchdev_obj* %14)
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.switchdev_obj*, %struct.switchdev_obj** %5, align 8
  %20 = call i32 @switchdev_port_obj_del_now(%struct.net_device* %18, %struct.switchdev_obj* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @switchdev_port_obj_del_defer(%struct.net_device*, %struct.switchdev_obj*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @switchdev_port_obj_del_now(%struct.net_device*, %struct.switchdev_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
