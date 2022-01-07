; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_port.c_dsa_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i32, i32, %struct.dsa_switch* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32)* }

@BR_STATE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsa_port_disable(%struct.dsa_port* %0) #0 {
  %2 = alloca %struct.dsa_port*, align 8
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  store %struct.dsa_port* %0, %struct.dsa_port** %2, align 8
  %5 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %6 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %5, i32 0, i32 2
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  store %struct.dsa_switch* %7, %struct.dsa_switch** %3, align 8
  %8 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %9 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %12 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.dsa_port*, %struct.dsa_port** %2, align 8
  %17 = load i32, i32* @BR_STATE_DISABLED, align 4
  %18 = call i32 @dsa_port_set_state_now(%struct.dsa_port* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %21 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.dsa_switch*, i32)* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %28 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dsa_switch*, i32)*, i32 (%struct.dsa_switch*, i32)** %30, align 8
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %31(%struct.dsa_switch* %32, i32 %33)
  br label %35

35:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @dsa_port_set_state_now(%struct.dsa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
