; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mpp_path_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mpp_path_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.mesh_table* }
%struct.mesh_table = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mesh_path = type { i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@mesh_rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpp_path_add(%struct.ieee80211_sub_if_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mesh_table*, align 8
  %9 = alloca %struct.mesh_path*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @ether_addr_equal(i32* %11, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @is_multicast_ether_addr(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %84

28:                                               ; preds = %21
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.mesh_path* @mesh_path_new(%struct.ieee80211_sub_if_data* %29, i32* %30, i32 %31)
  store %struct.mesh_path* %32, %struct.mesh_path** %9, align 8
  %33 = load %struct.mesh_path*, %struct.mesh_path** %9, align 8
  %34 = icmp ne %struct.mesh_path* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %84

38:                                               ; preds = %28
  %39 = load %struct.mesh_path*, %struct.mesh_path** %9, align 8
  %40 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i32 %41, i32* %42, i32 %43)
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.mesh_table*, %struct.mesh_table** %48, align 8
  store %struct.mesh_table* %49, %struct.mesh_table** %8, align 8
  %50 = load %struct.mesh_table*, %struct.mesh_table** %8, align 8
  %51 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load %struct.mesh_table*, %struct.mesh_table** %8, align 8
  %54 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %53, i32 0, i32 2
  %55 = load %struct.mesh_path*, %struct.mesh_path** %9, align 8
  %56 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %55, i32 0, i32 1
  %57 = load i32, i32* @mesh_rht_params, align 4
  %58 = call i32 @rhashtable_lookup_insert_fast(i32* %54, i32* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %38
  %62 = load %struct.mesh_path*, %struct.mesh_path** %9, align 8
  %63 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %62, i32 0, i32 0
  %64 = load %struct.mesh_table*, %struct.mesh_table** %8, align 8
  %65 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %64, i32 0, i32 1
  %66 = call i32 @hlist_add_head_rcu(i32* %63, i32* %65)
  br label %67

67:                                               ; preds = %61, %38
  %68 = load %struct.mesh_table*, %struct.mesh_table** %8, align 8
  %69 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.mesh_path*, %struct.mesh_path** %9, align 8
  %75 = call i32 @kfree(%struct.mesh_path* %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %76, %35, %25, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local %struct.mesh_path* @mesh_path_new(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rhashtable_lookup_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
