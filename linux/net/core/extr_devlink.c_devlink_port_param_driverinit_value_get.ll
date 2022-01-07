; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_param_driverinit_value_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_port_param_driverinit_value_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { i32, %struct.devlink* }
%struct.devlink = type { i32 }
%union.devlink_param_value = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_port_param_driverinit_value_get(%struct.devlink_port* %0, i32 %1, %union.devlink_param_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.devlink_param_value*, align 8
  %8 = alloca %struct.devlink*, align 8
  store %struct.devlink_port* %0, %struct.devlink_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.devlink_param_value* %2, %union.devlink_param_value** %7, align 8
  %9 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %10 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %9, i32 0, i32 1
  %11 = load %struct.devlink*, %struct.devlink** %10, align 8
  store %struct.devlink* %11, %struct.devlink** %8, align 8
  %12 = load %struct.devlink*, %struct.devlink** %8, align 8
  %13 = call i32 @devlink_reload_supported(%struct.devlink* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %20 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %19, i32 0, i32 0
  %21 = load i32, i32* %6, align 4
  %22 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %23 = call i32 @__devlink_param_driverinit_value_get(i32* %20, i32 %21, %union.devlink_param_value* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @devlink_reload_supported(%struct.devlink*) #1

declare dso_local i32 @__devlink_param_driverinit_value_get(i32*, i32, %union.devlink_param_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
