; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_group_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_group_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_mdb_entry = type { i32, i32, i64, i32, %struct.net_bridge* }
%struct.net_bridge = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@br_mdb_rht_params = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@mp = common dso_local global %struct.net_bridge_mdb_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @br_multicast_group_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_group_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_bridge_mdb_entry*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %6 = ptrtoint %struct.net_bridge_mdb_entry* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.net_bridge_mdb_entry* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.net_bridge_mdb_entry* %9, %struct.net_bridge_mdb_entry** %3, align 8
  %10 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %11 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %10, i32 0, i32 4
  %12 = load %struct.net_bridge*, %struct.net_bridge** %11, align 8
  store %struct.net_bridge* %12, %struct.net_bridge** %4, align 8
  %13 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netif_running(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %23 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %22, i32 0, i32 3
  %24 = call i64 @timer_pending(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %1
  br label %48

27:                                               ; preds = %21
  %28 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %29 = call i32 @br_multicast_host_leave(%struct.net_bridge_mdb_entry* %28, i32 1)
  %30 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %31 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %48

35:                                               ; preds = %27
  %36 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %37 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %36, i32 0, i32 1
  %38 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %39 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %38, i32 0, i32 1
  %40 = load i32, i32* @br_mdb_rht_params, align 4
  %41 = call i32 @rhashtable_remove_fast(i32* %37, i32* %39, i32 %40)
  %42 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %43 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %42, i32 0, i32 0
  %44 = call i32 @hlist_del_rcu(i32* %43)
  %45 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %46 = load i32, i32* @rcu, align 4
  %47 = call i32 @kfree_rcu(%struct.net_bridge_mdb_entry* %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %34, %26
  %49 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %50 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  ret void
}

declare dso_local %struct.net_bridge_mdb_entry* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @br_multicast_host_leave(%struct.net_bridge_mdb_entry*, i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.net_bridge_mdb_entry*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
