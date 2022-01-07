; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_received_tcn_bpdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_received_tcn_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"port %u(%s) received tcn bpdu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_received_tcn_bpdu(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %3 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %4 = call i64 @br_is_designated_port(%struct.net_bridge_port* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %11 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %15 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @br_info(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18)
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %21 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @br_topology_change_detection(i32 %22)
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %25 = call i32 @br_topology_change_acknowledge(%struct.net_bridge_port* %24)
  br label %26

26:                                               ; preds = %6, %1
  ret void
}

declare dso_local i64 @br_is_designated_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_info(i32, i8*, i32, i32) #1

declare dso_local i32 @br_topology_change_detection(i32) #1

declare dso_local i32 @br_topology_change_acknowledge(%struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
