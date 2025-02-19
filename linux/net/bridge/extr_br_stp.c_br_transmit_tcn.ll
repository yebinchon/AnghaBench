; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_transmit_tcn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp.c_br_transmit_tcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"root port %u not found for topology notice\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_transmit_tcn(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %4 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %5 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.net_bridge_port* @br_get_port(%struct.net_bridge* %4, i32 %7)
  store %struct.net_bridge_port* %8, %struct.net_bridge_port** %3, align 8
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %10 = icmp ne %struct.net_bridge_port* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %13 = call i32 @br_send_tcn_bpdu(%struct.net_bridge_port* %12)
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %16 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @br_notice(%struct.net_bridge* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %11
  ret void
}

declare dso_local %struct.net_bridge_port* @br_get_port(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_send_tcn_bpdu(%struct.net_bridge_port*) #1

declare dso_local i32 @br_notice(%struct.net_bridge*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
