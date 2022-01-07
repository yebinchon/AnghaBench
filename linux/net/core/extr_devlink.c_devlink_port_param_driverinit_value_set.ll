; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_param_driverinit_value_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_param_driverinit_value_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32, i32, i32 }
%union.devlink_param_value = type { i32 }

@DEVLINK_CMD_PORT_PARAM_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_port_param_driverinit_value_set(%struct.devlink_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.devlink_param_value, align 4
  %5 = alloca %struct.devlink_port*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %4, i32 0, i32 0
  store i32 %2, i32* %7, align 4
  store %struct.devlink_port* %0, %struct.devlink_port** %5, align 8
  store i32 %1, i32* %6, align 4
  %8 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %9 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %12 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %15 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %14, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @DEVLINK_CMD_PORT_PARAM_NEW, align 4
  %18 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__devlink_param_driverinit_value_set(i32 %10, i32 %13, i32* %15, i32 %16, i32 %19, i32 %17)
  ret i32 %20
}

declare dso_local i32 @__devlink_param_driverinit_value_set(i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
