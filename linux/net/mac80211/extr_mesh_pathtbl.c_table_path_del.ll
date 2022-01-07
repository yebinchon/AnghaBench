; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_table_path_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_table_path_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_table = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.mesh_path = type { i32 }

@mesh_rht_params = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mesh_table*, %struct.ieee80211_sub_if_data*, i32*)* @table_path_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_path_del(%struct.mesh_table* %0, %struct.ieee80211_sub_if_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mesh_table*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mesh_path*, align 8
  store %struct.mesh_table* %0, %struct.mesh_table** %5, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %10 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %13 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %12, i32 0, i32 1
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @mesh_rht_params, align 4
  %16 = call %struct.mesh_path* @rhashtable_lookup_fast(i32* %13, i32* %14, i32 %15)
  store %struct.mesh_path* %16, %struct.mesh_path** %8, align 8
  %17 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %18 = icmp ne %struct.mesh_path* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %21 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %27 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %28 = call i32 @__mesh_path_del(%struct.mesh_table* %26, %struct.mesh_path* %27)
  %29 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %30 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mesh_path* @rhashtable_lookup_fast(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__mesh_path_del(%struct.mesh_table*, %struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
