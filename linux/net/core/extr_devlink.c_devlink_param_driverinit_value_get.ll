; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_driverinit_value_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_driverinit_value_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%union.devlink_param_value = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_param_driverinit_value_get(%struct.devlink* %0, i32 %1, %union.devlink_param_value* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.devlink_param_value*, align 8
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.devlink_param_value* %2, %union.devlink_param_value** %7, align 8
  %8 = load %struct.devlink*, %struct.devlink** %5, align 8
  %9 = call i32 @devlink_reload_supported(%struct.devlink* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %20

14:                                               ; preds = %3
  %15 = load %struct.devlink*, %struct.devlink** %5, align 8
  %16 = getelementptr inbounds %struct.devlink, %struct.devlink* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = load %union.devlink_param_value*, %union.devlink_param_value** %7, align 8
  %19 = call i32 @__devlink_param_driverinit_value_get(i32* %16, i32 %17, %union.devlink_param_value* %18)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @devlink_reload_supported(%struct.devlink*) #1

declare dso_local i32 @__devlink_param_driverinit_value_get(i32*, i32, %union.devlink_param_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
