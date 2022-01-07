; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_plink_fsm_restart.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_plink_fsm_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32 }

@NL80211_PLINK_LISTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @mesh_plink_fsm_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_plink_fsm_restart(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %3 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %4 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load i32, i32* @NL80211_PLINK_LISTEN, align 4
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i32 %8, i32* %12, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
