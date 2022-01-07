; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_root_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_root_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_if_mesh = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_ROOTMODE_ROOT = common dso_local global i64 0, align 8
@MESH_WORK_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_mesh_root_setup(%struct.ieee80211_if_mesh* %0) #0 {
  %2 = alloca %struct.ieee80211_if_mesh*, align 8
  store %struct.ieee80211_if_mesh* %0, %struct.ieee80211_if_mesh** %2, align 8
  %3 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @IEEE80211_ROOTMODE_ROOT, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @MESH_WORK_ROOT, align 4
  %11 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %11, i32 0, i32 1
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* @MESH_WORK_ROOT, align 4
  %16 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %16, i32 0, i32 1
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %19, i32 0, i32 0
  %21 = call i32 @del_timer_sync(i32* %20)
  br label %22

22:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
