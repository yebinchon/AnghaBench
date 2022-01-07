; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_oper_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_oper_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Discarding TDLS oper %d - not STA or disconnected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_tdls_oper_request(%struct.ieee80211_vif* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %11, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19, %5
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %38

29:                                               ; preds = %19
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @cfg80211_tdls_oper_request(i32 %32, i32* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %25
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32) #1

declare dso_local i32 @cfg80211_tdls_oper_request(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
