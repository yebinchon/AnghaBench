; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_free_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_free_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_table = type { i32 }
%struct.mesh_path = type { i32, i32, i32, %struct.ieee80211_sub_if_data* }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MESH_PATH_RESOLVING = common dso_local global i32 0, align 4
@MESH_PATH_DELETED = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_table*, %struct.mesh_path*)* @mesh_path_free_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_path_free_rcu(%struct.mesh_table* %0, %struct.mesh_path* %1) #0 {
  %3 = alloca %struct.mesh_table*, align 8
  %4 = alloca %struct.mesh_path*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.mesh_table* %0, %struct.mesh_table** %3, align 8
  store %struct.mesh_path* %1, %struct.mesh_path** %4, align 8
  %6 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %7 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %6, i32 0, i32 3
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  store %struct.ieee80211_sub_if_data* %8, %struct.ieee80211_sub_if_data** %5, align 8
  %9 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %10 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load i32, i32* @MESH_PATH_RESOLVING, align 4
  %13 = load i32, i32* @MESH_PATH_DELETED, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %16 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %20 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %21 = call i32 @mesh_gate_del(%struct.mesh_table* %19, %struct.mesh_path* %20)
  %22 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %23 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %26 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %25, i32 0, i32 1
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @atomic_dec(i32* %31)
  %33 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %34 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %33, i32 0, i32 0
  %35 = call i32 @atomic_dec(i32* %34)
  %36 = load %struct.mesh_path*, %struct.mesh_path** %4, align 8
  %37 = load i32, i32* @rcu, align 4
  %38 = call i32 @kfree_rcu(%struct.mesh_path* %36, i32 %37)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mesh_gate_del(%struct.mesh_table*, %struct.mesh_path*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.mesh_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
