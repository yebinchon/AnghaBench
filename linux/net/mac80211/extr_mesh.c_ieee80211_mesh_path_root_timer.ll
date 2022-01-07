; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_path_root_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_path_root_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i32 }
%struct.timer_list = type { i32 }

@u = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@MESH_WORK_ROOT = common dso_local global i32 0, align 4
@sdata = common dso_local global %struct.ieee80211_sub_if_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ieee80211_mesh_path_root_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mesh_path_root_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_if_mesh*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %6 = ptrtoint %struct.ieee80211_sub_if_data* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @u, i32 0, i32 0, i32 0), align 4
  %9 = call %struct.ieee80211_sub_if_data* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.ieee80211_sub_if_data* %9, %struct.ieee80211_sub_if_data** %3, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %12, %struct.ieee80211_if_mesh** %4, align 8
  %13 = load i32, i32* @MESH_WORK_ROOT, align 4
  %14 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 0
  %23 = call i32 @ieee80211_queue_work(i32* %20, i32* %22)
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
