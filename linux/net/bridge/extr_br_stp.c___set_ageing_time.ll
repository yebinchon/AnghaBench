; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c___set_ageing_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c___set_ageing_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.switchdev_attr = type { i32, %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }

@SWITCHDEV_F_SKIP_EOPNOTSUPP = common dso_local global i32 0, align 4
@SWITCHDEV_F_DEFER = common dso_local global i32 0, align 4
@SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__set_ageing_time(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.switchdev_attr, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 0
  %9 = load i32, i32* @SWITCHDEV_F_SKIP_EOPNOTSUPP, align 4
  %10 = load i32, i32* @SWITCHDEV_F_DEFER, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 8
  %12 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @jiffies_to_clock_t(i64 %14)
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 2
  %17 = load i32, i32* @SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %6, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %19, %struct.net_device** %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @switchdev_port_attr_set(%struct.net_device* %20, %struct.switchdev_attr* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @jiffies_to_clock_t(i64) #1

declare dso_local i32 @switchdev_port_attr_set(%struct.net_device*, %struct.switchdev_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
