; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_tx_wmm_ac_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_tx_wmm_ac_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, %struct.ieee80211_sta_tx_tspec* }
%struct.ieee80211_sta_tx_tspec = type { i64, i64, i64, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@TX_TSPEC_ACTION_STOP_DOWNGRADE = common dso_local global i32 0, align 4
@TX_TSPEC_ACTION_DOWNGRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_hdr*, i64)* @ieee80211_sta_tx_wmm_ac_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_sta_tx_wmm_ac_notify(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sta_tx_tspec*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ieee80211_if_managed* %14, %struct.ieee80211_if_managed** %7, align 8
  %15 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %16 = call i64 @ieee80211_get_tid(%struct.ieee80211_hdr* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @ieee80211_ac_from_tid(i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %19, i32 0, i32 1
  %21 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %21, i64 %23
  store %struct.ieee80211_sta_tx_tspec* %24, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %25 = load i64, i64* @jiffies, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %90

35:                                               ; preds = %3
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HZ, align 8
  %41 = add i64 %39, %40
  %42 = call i64 @time_after(i64 %36, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %35
  %45 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load i32, i32* @TX_TSPEC_ACTION_STOP_DOWNGRADE, align 4
  %56 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %58, i32 0, i32 0
  %60 = call i32 @schedule_delayed_work(i32* %59, i32 0)
  br label %61

61:                                               ; preds = %54, %44
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %90

68:                                               ; preds = %62
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %76, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %68
  %82 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %82, i32 0, i32 3
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* @TX_TSPEC_ACTION_DOWNGRADE, align 4
  %85 = load %struct.ieee80211_sta_tx_tspec*, %struct.ieee80211_sta_tx_tspec** %10, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sta_tx_tspec, %struct.ieee80211_sta_tx_tspec* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %87, i32 0, i32 0
  %89 = call i32 @schedule_delayed_work(i32* %88, i32 0)
  br label %90

90:                                               ; preds = %34, %67, %81, %68
  ret void
}

declare dso_local i64 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_ac_from_tid(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
