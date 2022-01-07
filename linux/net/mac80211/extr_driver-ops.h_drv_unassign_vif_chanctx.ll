; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_unassign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_unassign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, i32*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_chanctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*)* @drv_unassign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_unassign_vif_chanctx(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_chanctx* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_chanctx*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_chanctx* %2, %struct.ieee80211_chanctx** %6, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %9 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %46

12:                                               ; preds = %3
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %15 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %16 = call i32 @trace_drv_unassign_vif_chanctx(%struct.ieee80211_local* %13, %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_chanctx* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %20, align 8
  %22 = icmp ne i32 (i32*, i32*, i32*)* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %12
  %24 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %34, align 8
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %38, i32 0, i32 0
  %40 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %40, i32 0, i32 0
  %42 = call i32 %35(i32* %37, i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %23, %12
  %44 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %45 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %44)
  br label %46

46:                                               ; preds = %43, %11
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_unassign_vif_chanctx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
