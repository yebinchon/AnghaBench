; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_clear_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_clear_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@BR_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @br_port_clear_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_port_clear_promisc(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  %3 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %4 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %5 = call i32 @br_promisc_port(%struct.net_bridge_port* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7, %1
  br label %37

17:                                               ; preds = %7
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %22 = call i32 @br_fdb_sync_static(i32 %20, %struct.net_bridge_port* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %37

26:                                               ; preds = %17
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @dev_set_promiscuity(%struct.TYPE_2__* %29, i32 -1)
  %31 = load i32, i32* @BR_PROMISC, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %34 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %26, %25, %16
  ret void
}

declare dso_local i32 @br_promisc_port(%struct.net_bridge_port*) #1

declare dso_local i32 @br_fdb_sync_static(i32, %struct.net_bridge_port*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
