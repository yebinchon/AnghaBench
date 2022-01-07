; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_pathtbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_pathtbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mesh_table*, %struct.mesh_table* }
%struct.mesh_table = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@mesh_rht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_pathtbl_init(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.mesh_table*, align 8
  %5 = alloca %struct.mesh_table*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = call %struct.mesh_table* (...) @mesh_table_alloc()
  store %struct.mesh_table* %7, %struct.mesh_table** %4, align 8
  %8 = load %struct.mesh_table*, %struct.mesh_table** %4, align 8
  %9 = icmp ne %struct.mesh_table* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = call %struct.mesh_table* (...) @mesh_table_alloc()
  store %struct.mesh_table* %14, %struct.mesh_table** %5, align 8
  %15 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %16 = icmp ne %struct.mesh_table* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %37

20:                                               ; preds = %13
  %21 = load %struct.mesh_table*, %struct.mesh_table** %4, align 8
  %22 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %21, i32 0, i32 0
  %23 = call i32 @rhashtable_init(i32* %22, i32* @mesh_rht_params)
  %24 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %25 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %24, i32 0, i32 0
  %26 = call i32 @rhashtable_init(i32* %25, i32* @mesh_rht_params)
  %27 = load %struct.mesh_table*, %struct.mesh_table** %4, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store %struct.mesh_table* %27, %struct.mesh_table** %31, align 8
  %32 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.mesh_table* %32, %struct.mesh_table** %36, align 8
  store i32 0, i32* %2, align 4
  br label %41

37:                                               ; preds = %17
  %38 = load %struct.mesh_table*, %struct.mesh_table** %4, align 8
  %39 = call i32 @mesh_table_free(%struct.mesh_table* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %20, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.mesh_table* @mesh_table_alloc(...) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @mesh_table_free(%struct.mesh_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
