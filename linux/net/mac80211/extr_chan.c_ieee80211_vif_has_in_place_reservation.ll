; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_has_in_place_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_has_in_place_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_chanctx*, %struct.TYPE_2__* }
%struct.ieee80211_chanctx = type { i64 }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_CHANCTX_WILL_BE_REPLACED = common dso_local global i64 0, align 8
@IEEE80211_CHANCTX_REPLACES_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*)* @ieee80211_vif_has_in_place_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_vif_has_in_place_reservation(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_chanctx*, align 8
  %5 = alloca %struct.ieee80211_chanctx*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %6 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %12, align 8
  store %struct.ieee80211_chanctx* %13, %struct.ieee80211_chanctx** %5, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = call %struct.ieee80211_chanctx* @ieee80211_vif_get_chanctx(%struct.ieee80211_sub_if_data* %14)
  store %struct.ieee80211_chanctx* %15, %struct.ieee80211_chanctx** %4, align 8
  %16 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %17 = icmp ne %struct.ieee80211_chanctx* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %21 = icmp ne %struct.ieee80211_chanctx* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IEEE80211_CHANCTX_WILL_BE_REPLACED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %42

34:                                               ; preds = %27
  %35 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IEEE80211_CHANCTX_REPLACES_OTHER, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %33, %26, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ieee80211_chanctx* @ieee80211_vif_get_chanctx(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
