; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_local_router_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_local_router_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i32 }
%struct.timer_list = type { i32 }

@multicast_router_timer = common dso_local global i32 0, align 4
@MDB_RTR_TYPE_DISABLED = common dso_local global i64 0, align 8
@MDB_RTR_TYPE_PERM = common dso_local global i64 0, align 8
@br = common dso_local global %struct.net_bridge* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @br_multicast_local_router_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_local_router_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %5 = ptrtoint %struct.net_bridge* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @multicast_router_timer, align 4
  %8 = call %struct.net_bridge* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.net_bridge* %8, %struct.net_bridge** %3, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MDB_RTR_TYPE_DISABLED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MDB_RTR_TYPE_PERM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 2
  %26 = call i64 @timer_pending(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %17, %1
  br label %32

29:                                               ; preds = %23
  %30 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %31 = call i32 @br_mc_router_state_change(%struct.net_bridge* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %34 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local %struct.net_bridge* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @br_mc_router_state_change(%struct.net_bridge*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
