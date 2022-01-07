; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_port_group_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_port_group_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port_group = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_bridge* }
%struct.net_bridge = type { i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@MDB_PG_FLAGS_PERMANENT = common dso_local global i32 0, align 4
@pg = common dso_local global %struct.net_bridge_port_group* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @br_multicast_port_group_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_port_group_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_bridge_port_group*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %6 = ptrtoint %struct.net_bridge_port_group* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.net_bridge_port_group* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.net_bridge_port_group* %9, %struct.net_bridge_port_group** %3, align 8
  %10 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %11 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.net_bridge*, %struct.net_bridge** %13, align 8
  store %struct.net_bridge* %14, %struct.net_bridge** %4, align 8
  %15 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %19 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_running(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %24, i32 0, i32 2
  %26 = call i64 @timer_pending(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %30 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %29, i32 0, i32 1
  %31 = call i64 @hlist_unhashed(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %35 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MDB_PG_FLAGS_PERMANENT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %28, %23, %1
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %43 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %3, align 8
  %44 = call i32 @br_multicast_del_pg(%struct.net_bridge* %42, %struct.net_bridge_port_group* %43)
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %47 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  ret void
}

declare dso_local %struct.net_bridge_port_group* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @br_multicast_del_pg(%struct.net_bridge*, %struct.net_bridge_port_group*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
