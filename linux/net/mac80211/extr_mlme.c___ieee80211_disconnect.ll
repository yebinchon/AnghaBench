; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c___ieee80211_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c___ieee80211_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY = common dso_local global i32 0, align 4
@IEEE80211_QUEUE_STOP_REASON_CSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @__ieee80211_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_disconnect(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_if_managed*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 3
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  store %struct.ieee80211_local* %11, %struct.ieee80211_local** %3, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ieee80211_if_managed* %14, %struct.ieee80211_if_managed** %4, align 8
  %15 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %20 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %19)
  %21 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %27 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %26)
  store i32 1, i32* %8, align 4
  br label %79

28:                                               ; preds = %1
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cfg80211_unlink_bss(i32 %38, i32 %41)
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %44 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %45 = load i32, i32* @WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %43, i32 %44, i32 %45, i32 %46, i32* %18)
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %28
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %63 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_CSA, align 4
  %64 = call i32 @ieee80211_wake_vif_queues(%struct.ieee80211_local* %61, %struct.ieee80211_sub_if_data* %62, i32 %63)
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %28
  %68 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %72 = mul nuw i64 4, %16
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY, align 4
  %76 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %71, i32* %18, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %78 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %77)
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %67, %25
  %80 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %83 [
    i32 0, label %82
    i32 1, label %82
  ]

82:                                               ; preds = %79, %79
  ret void

83:                                               ; preds = %79
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @cfg80211_unlink_bss(i32, i32) #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ieee80211_wake_vif_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
