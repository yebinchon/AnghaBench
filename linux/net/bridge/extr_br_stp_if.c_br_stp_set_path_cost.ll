; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_set_path_cost.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_if.c_br_stp_set_path_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, i32 }

@BR_MIN_PATH_COST = common dso_local global i64 0, align 8
@BR_MAX_PATH_COST = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@BR_ADMIN_COST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_stp_set_path_cost(%struct.net_bridge_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i64, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BR_MIN_PATH_COST, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @BR_MAX_PATH_COST, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %9
  %17 = load i32, i32* @BR_ADMIN_COST, align 4
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %24 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @br_configuration_update(i32 %27)
  %29 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %30 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @br_port_state_selection(i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %16, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @br_configuration_update(i32) #1

declare dso_local i32 @br_port_state_selection(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
