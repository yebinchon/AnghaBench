; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_set_port_flag.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_switchdev.c_br_switchdev_set_port_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.switchdev_attr = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.switchdev_notifier_port_attr_info = type { i32, %struct.switchdev_attr* }

@SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS = common dso_local global i32 0, align 4
@BR_PORT_FLAGS_HW_OFFLOAD = common dso_local global i64 0, align 8
@SWITCHDEV_PORT_ATTR_SET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"bridge flag offload is not supported %u(%s)\0A\00", align 1
@SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS = common dso_local global i32 0, align 4
@SWITCHDEV_F_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error setting offload flag on port %u(%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_switchdev_set_port_flag(%struct.net_bridge_port* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.switchdev_attr, align 8
  %9 = alloca %struct.switchdev_notifier_port_attr_info, align 8
  %10 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %8, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %8, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %8, i32 0, i32 2
  %16 = load i32, i32* @SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %8, i32 0, i32 3
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %17, align 8
  %21 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, %struct.switchdev_notifier_port_attr_info* %9, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, %struct.switchdev_notifier_port_attr_info* %9, i32 0, i32 1
  store %struct.switchdev_attr* %8, %struct.switchdev_attr** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @BR_PORT_FLAGS_HW_OFFLOAD, align 8
  %25 = xor i64 %24, -1
  %26 = and i64 %23, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

29:                                               ; preds = %3
  %30 = load i32, i32* @SWITCHDEV_PORT_ATTR_SET, align 4
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %32 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, %struct.switchdev_notifier_port_attr_info* %9, i32 0, i32 0
  %35 = call i32 @call_switchdev_notifiers(i32 %30, %struct.TYPE_5__* %33, i32* %34, i32* null)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @notifier_to_errno(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %92

43:                                               ; preds = %29
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %48 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %51 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %55 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @br_warn(i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %58)
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %92

62:                                               ; preds = %43
  %63 = load i32, i32* @SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS, align 4
  %64 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %8, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @SWITCHDEV_F_DEFER, align 4
  %66 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %8, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.switchdev_attr, %struct.switchdev_attr* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %71 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @switchdev_port_attr_set(%struct.TYPE_5__* %72, %struct.switchdev_attr* %8)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %62
  %77 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %78 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %81 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %85 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @br_warn(i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %76, %46, %42, %28
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @call_switchdev_notifiers(i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @notifier_to_errno(i32) #1

declare dso_local i32 @br_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @switchdev_port_attr_set(%struct.TYPE_5__*, %struct.switchdev_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
