; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_flags_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_if.c_br_port_flags_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.net_bridge = type { i32 }

@BR_AUTO_MASK = common dso_local global i64 0, align 8
@BR_NEIGH_SUPPRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_port_flags_change(%struct.net_bridge_port* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 0
  %8 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  store %struct.net_bridge* %8, %struct.net_bridge** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @BR_AUTO_MASK, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %15 = call i32 @nbp_update_port_count(%struct.net_bridge* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BR_NEIGH_SUPPRESS, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %23 = call i32 @br_recalculate_neigh_suppress_enabled(%struct.net_bridge* %22)
  br label %24

24:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @nbp_update_port_count(%struct.net_bridge*) #1

declare dso_local i32 @br_recalculate_neigh_suppress_enabled(%struct.net_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
