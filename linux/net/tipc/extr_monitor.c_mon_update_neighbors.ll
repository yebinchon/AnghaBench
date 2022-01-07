; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_update_neighbors.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_mon_update_neighbors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_monitor = type { i32 }
%struct.tipc_peer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_monitor*, %struct.tipc_peer*)* @mon_update_neighbors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_update_neighbors(%struct.tipc_monitor* %0, %struct.tipc_peer* %1) #0 {
  %3 = alloca %struct.tipc_monitor*, align 8
  %4 = alloca %struct.tipc_peer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tipc_monitor* %0, %struct.tipc_monitor** %3, align 8
  store %struct.tipc_peer* %1, %struct.tipc_peer** %4, align 8
  %7 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %8 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dom_size(i32 %9)
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.tipc_monitor*, %struct.tipc_monitor** %3, align 8
  %17 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %18 = call i32 @mon_apply_domain(%struct.tipc_monitor* %16, %struct.tipc_peer* %17)
  %19 = load %struct.tipc_peer*, %struct.tipc_peer** %4, align 8
  %20 = call %struct.tipc_peer* @peer_prev(%struct.tipc_peer* %19)
  store %struct.tipc_peer* %20, %struct.tipc_peer** %4, align 8
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %11

24:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dom_size(i32) #1

declare dso_local i32 @mon_apply_domain(%struct.tipc_monitor*, %struct.tipc_peer*) #1

declare dso_local %struct.tipc_peer* @peer_prev(%struct.tipc_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
