; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mpath_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mpath_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i32 }
%struct.mesh_table = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@mesh_rht_params = common dso_local global i32 0, align 4
@MESH_PATH_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mesh_path* (%struct.mesh_table*, i32*, %struct.ieee80211_sub_if_data*)* @mpath_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mesh_path* @mpath_lookup(%struct.mesh_table* %0, i32* %1, %struct.ieee80211_sub_if_data* %2) #0 {
  %4 = alloca %struct.mesh_table*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.mesh_path*, align 8
  store %struct.mesh_table* %0, %struct.mesh_table** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_sub_if_data* %2, %struct.ieee80211_sub_if_data** %6, align 8
  %8 = load %struct.mesh_table*, %struct.mesh_table** %4, align 8
  %9 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %8, i32 0, i32 0
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @mesh_rht_params, align 4
  %12 = call %struct.mesh_path* @rhashtable_lookup(i32* %9, i32* %10, i32 %11)
  store %struct.mesh_path* %12, %struct.mesh_path** %7, align 8
  %13 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %14 = icmp ne %struct.mesh_path* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %17 = call i64 @mpath_expired(%struct.mesh_path* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %21 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load i32, i32* @MESH_PATH_ACTIVE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %26 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %30 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  br label %32

32:                                               ; preds = %19, %15, %3
  %33 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  ret %struct.mesh_path* %33
}

declare dso_local %struct.mesh_path* @rhashtable_lookup(i32*, i32*, i32) #1

declare dso_local i64 @mpath_expired(%struct.mesh_path*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
