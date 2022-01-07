; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_do_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_do_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_6__ }
%struct.ieee80211_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_mgd_assoc_data* }
%struct.ieee80211_mgd_assoc_data = type { i64, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@IEEE80211_ASSOC_MAX_TRIES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"association with %pM timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"associate with %pM (try %d/%d)\0A\00", align 1
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_ASSOC_TIMEOUT = common dso_local global i64 0, align 8
@IEEE80211_ASSOC_TIMEOUT_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*)* @ieee80211_do_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_do_assoc(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %9, align 8
  store %struct.ieee80211_mgd_assoc_data* %10, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %5, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %14)
  %16 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_ASSOC_MAX_TRIES, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %27 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @cfg80211_unlink_bss(i32 %36, %struct.TYPE_8__* %39)
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %90

43:                                               ; preds = %1
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %45 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IEEE80211_ASSOC_MAX_TRIES, align 8
  %54 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49, i64 %52, i64 %53)
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %56 = call i32 @ieee80211_send_assoc(%struct.ieee80211_sub_if_data* %55)
  %57 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %57, i32 0, i32 0
  %59 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %60 = call i32 @ieee80211_hw_check(%struct.TYPE_7__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %43
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* @IEEE80211_ASSOC_TIMEOUT, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %71 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @run_again(%struct.ieee80211_sub_if_data* %70, i64 %73)
  br label %89

75:                                               ; preds = %43
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i64, i64* @IEEE80211_ASSOC_TIMEOUT_LONG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @round_jiffies_up(i64 %78)
  %80 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %85 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @run_again(%struct.ieee80211_sub_if_data* %84, i64 %87)
  br label %89

89:                                               ; preds = %75, %62
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %25
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #1

declare dso_local i32 @cfg80211_unlink_bss(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ieee80211_send_assoc(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_hw_check(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @run_again(%struct.ieee80211_sub_if_data*, i64) #1

declare dso_local i64 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
