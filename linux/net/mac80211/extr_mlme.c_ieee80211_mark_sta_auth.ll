; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mark_sta_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_mark_sta_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.sta_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"authenticated\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_AUTH_WAIT_ASSOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: STA %pM not found\00", align 1
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed moving %pM to auth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i32*)* @ieee80211_mark_sta_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_mark_sta_auth(%struct.ieee80211_sub_if_data* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_if_managed*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.ieee80211_if_managed* %10, %struct.ieee80211_if_managed** %5, align 8
  store i32 1, i32* %7, align 4
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @IEEE80211_AUTH_WAIT_ASSOC, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i64 %19, i64* %23, align 8
  %24 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %29 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @run_again(%struct.ieee80211_sub_if_data* %28, i64 %33)
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %40, i32* %41)
  store %struct.sta_info* %42, %struct.sta_info** %6, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %44 = icmp ne %struct.sta_info* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %2
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32* %49)
  store i32 0, i32* %7, align 4
  br label %61

51:                                               ; preds = %2
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %54 = call i64 @sta_info_move_state(%struct.sta_info* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %58)
  store i32 0, i32* %7, align 4
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %56, %45
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i32 @run_again(%struct.ieee80211_sub_if_data*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32*) #1

declare dso_local i64 @sta_info_move_state(%struct.sta_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
