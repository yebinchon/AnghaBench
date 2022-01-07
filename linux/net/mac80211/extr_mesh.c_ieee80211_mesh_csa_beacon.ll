; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_csa_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_csa_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32 }
%struct.cfg80211_csa_settings = type { i32 }
%struct.mesh_csa_settings = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mesh_csa_beacon(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_csa_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_csa_settings*, align 8
  %6 = alloca %struct.ieee80211_if_mesh*, align 8
  %7 = alloca %struct.mesh_csa_settings*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_csa_settings* %1, %struct.cfg80211_csa_settings** %5, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %11, %struct.ieee80211_if_mesh** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.mesh_csa_settings* @kmalloc(i32 4, i32 %16)
  store %struct.mesh_csa_settings* %17, %struct.mesh_csa_settings** %7, align 8
  %18 = load %struct.mesh_csa_settings*, %struct.mesh_csa_settings** %7, align 8
  %19 = icmp ne %struct.mesh_csa_settings* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.mesh_csa_settings*, %struct.mesh_csa_settings** %7, align 8
  %25 = getelementptr inbounds %struct.mesh_csa_settings, %struct.mesh_csa_settings* %24, i32 0, i32 0
  %26 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %5, align 8
  %27 = call i32 @memcpy(i32* %25, %struct.cfg80211_csa_settings* %26, i32 4)
  %28 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mesh_csa_settings*, %struct.mesh_csa_settings** %7, align 8
  %32 = call i32 @rcu_assign_pointer(i32 %30, %struct.mesh_csa_settings* %31)
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %34 = call i32 @ieee80211_mesh_rebuild_beacon(%struct.ieee80211_sub_if_data* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %23
  %38 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.mesh_csa_settings* @rcu_dereference(i32 %40)
  store %struct.mesh_csa_settings* %41, %struct.mesh_csa_settings** %7, align 8
  %42 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @RCU_INIT_POINTER(i32 %44, i32* null)
  %46 = load %struct.mesh_csa_settings*, %struct.mesh_csa_settings** %7, align 8
  %47 = load i32, i32* @rcu_head, align 4
  %48 = call i32 @kfree_rcu(%struct.mesh_csa_settings* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %23
  %51 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %37, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.mesh_csa_settings* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.cfg80211_csa_settings*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.mesh_csa_settings*) #1

declare dso_local i32 @ieee80211_mesh_rebuild_beacon(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.mesh_csa_settings* @rcu_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.mesh_csa_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
