; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.mesh_table*, i32 }
%struct.mesh_table = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@MESH_MAX_MPATHS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mesh_rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mesh_path* @mesh_path_add(%struct.ieee80211_sub_if_data* %0, i32* %1) #0 {
  %3 = alloca %struct.mesh_path*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mesh_table*, align 8
  %7 = alloca %struct.mesh_path*, align 8
  %8 = alloca %struct.mesh_path*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ether_addr_equal(i32* %9, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.mesh_path* @ERR_PTR(i32 %18)
  store %struct.mesh_path* %19, %struct.mesh_path** %3, align 8
  br label %98

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @is_multicast_ether_addr(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.mesh_path* @ERR_PTR(i32 %26)
  store %struct.mesh_path* %27, %struct.mesh_path** %3, align 8
  br label %98

28:                                               ; preds = %20
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* @MESH_MAX_MPATHS, align 4
  %34 = call i64 @atomic_add_unless(i32* %32, i32 1, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.mesh_path* @ERR_PTR(i32 %38)
  store %struct.mesh_path* %39, %struct.mesh_path** %3, align 8
  br label %98

40:                                               ; preds = %28
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.mesh_path* @mesh_path_new(%struct.ieee80211_sub_if_data* %41, i32* %42, i32 %43)
  store %struct.mesh_path* %44, %struct.mesh_path** %8, align 8
  %45 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %46 = icmp ne %struct.mesh_path* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.mesh_path* @ERR_PTR(i32 %49)
  store %struct.mesh_path* %50, %struct.mesh_path** %3, align 8
  br label %98

51:                                               ; preds = %40
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.mesh_table*, %struct.mesh_table** %55, align 8
  store %struct.mesh_table* %56, %struct.mesh_table** %6, align 8
  %57 = load %struct.mesh_table*, %struct.mesh_table** %6, align 8
  %58 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_bh(i32* %58)
  %60 = load %struct.mesh_table*, %struct.mesh_table** %6, align 8
  %61 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %60, i32 0, i32 2
  %62 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %63 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %62, i32 0, i32 1
  %64 = load i32, i32* @mesh_rht_params, align 4
  %65 = call %struct.mesh_path* @rhashtable_lookup_get_insert_fast(i32* %61, i32* %63, i32 %64)
  store %struct.mesh_path* %65, %struct.mesh_path** %7, align 8
  %66 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %67 = icmp ne %struct.mesh_path* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %51
  %69 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %70 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %69, i32 0, i32 0
  %71 = load %struct.mesh_table*, %struct.mesh_table** %6, align 8
  %72 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %71, i32 0, i32 1
  %73 = call i32 @hlist_add_head(i32* %70, i32* %72)
  br label %74

74:                                               ; preds = %68, %51
  %75 = load %struct.mesh_table*, %struct.mesh_table** %6, align 8
  %76 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %79 = icmp ne %struct.mesh_path* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  %82 = call i32 @kfree(%struct.mesh_path* %81)
  %83 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  %84 = call i64 @IS_ERR(%struct.mesh_path* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  store %struct.mesh_path* %87, %struct.mesh_path** %3, align 8
  br label %98

88:                                               ; preds = %80
  %89 = load %struct.mesh_path*, %struct.mesh_path** %7, align 8
  store %struct.mesh_path* %89, %struct.mesh_path** %8, align 8
  br label %90

90:                                               ; preds = %88, %74
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.mesh_path*, %struct.mesh_path** %8, align 8
  store %struct.mesh_path* %97, %struct.mesh_path** %3, align 8
  br label %98

98:                                               ; preds = %90, %86, %47, %36, %24, %16
  %99 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  ret %struct.mesh_path* %99
}

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local %struct.mesh_path* @ERR_PTR(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local %struct.mesh_path* @mesh_path_new(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mesh_path* @rhashtable_lookup_get_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.mesh_path*) #1

declare dso_local i64 @IS_ERR(%struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
