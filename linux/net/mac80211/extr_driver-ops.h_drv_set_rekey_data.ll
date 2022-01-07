; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_set_rekey_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_set_rekey_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.cfg80211_gtk_rekey_data*)* }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.cfg80211_gtk_rekey_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_gtk_rekey_data*)* @drv_set_rekey_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_set_rekey_data(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, %struct.cfg80211_gtk_rekey_data* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.cfg80211_gtk_rekey_data*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.cfg80211_gtk_rekey_data* %2, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %7 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %8 = call i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %37

11:                                               ; preds = %3
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %14 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %15 = call i32 @trace_drv_set_rekey_data(%struct.ieee80211_local* %12, %struct.ieee80211_sub_if_data* %13, %struct.cfg80211_gtk_rekey_data* %14)
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, i32*, %struct.cfg80211_gtk_rekey_data*)*, i32 (i32*, i32*, %struct.cfg80211_gtk_rekey_data*)** %19, align 8
  %21 = icmp ne i32 (i32*, i32*, %struct.cfg80211_gtk_rekey_data*)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %11
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32*, i32*, %struct.cfg80211_gtk_rekey_data*)*, i32 (i32*, i32*, %struct.cfg80211_gtk_rekey_data*)** %26, align 8
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %33 = call i32 %27(i32* %29, i32* %31, %struct.cfg80211_gtk_rekey_data* %32)
  br label %34

34:                                               ; preds = %22, %11
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %36 = call i32 @trace_drv_return_void(%struct.ieee80211_local* %35)
  br label %37

37:                                               ; preds = %34, %10
  ret void
}

declare dso_local i32 @check_sdata_in_driver(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_set_rekey_data(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.cfg80211_gtk_rekey_data*) #1

declare dso_local i32 @trace_drv_return_void(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
