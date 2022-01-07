; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_mon_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_mon_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.vif_params = type { i32, i64, i64 }

@MONITOR_FLAG_COOK_FRAMES = common dso_local global i32 0, align 4
@MONITOR_FLAG_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.vif_params*)* @ieee80211_set_mon_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_mon_options(%struct.ieee80211_sub_if_data* %0, %struct.vif_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.vif_params*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.vif_params* %1, %struct.vif_params** %5, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  store %struct.ieee80211_local* %11, %struct.ieee80211_local** %6, align 8
  %12 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %13 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %18 = call i64 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32, i32* @MONITOR_FLAG_COOK_FRAMES, align 4
  %22 = load i32, i32* @MONITOR_FLAG_ACTIVE, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %25 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %28, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %101

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40, %16, %2
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.ieee80211_sub_if_data* @rtnl_dereference(i32 %44)
  store %struct.ieee80211_sub_if_data* %45, %struct.ieee80211_sub_if_data** %7, align 8
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %47 = icmp ne %struct.ieee80211_sub_if_data* %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %41
  %49 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %50 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %55 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %101

61:                                               ; preds = %53, %41
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %63 = icmp ne %struct.ieee80211_sub_if_data* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %66 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %67 = call i32 @ieee80211_set_mu_mimo_follow(%struct.ieee80211_sub_if_data* %65, %struct.vif_params* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %70 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %68
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %75 = call i64 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %79 = call i32 @ieee80211_adjust_monitor_flags(%struct.ieee80211_sub_if_data* %78, i32 -1)
  %80 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %81 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 8
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %88 = call i32 @ieee80211_adjust_monitor_flags(%struct.ieee80211_sub_if_data* %87, i32 1)
  %89 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %90 = call i32 @ieee80211_configure_filter(%struct.ieee80211_local* %89)
  br label %99

91:                                               ; preds = %73
  %92 = load %struct.vif_params*, %struct.vif_params** %5, align 8
  %93 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  br label %99

99:                                               ; preds = %91, %77
  br label %100

100:                                              ; preds = %99, %68
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %58, %37
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_sub_if_data* @rtnl_dereference(i32) #1

declare dso_local i32 @ieee80211_set_mu_mimo_follow(%struct.ieee80211_sub_if_data*, %struct.vif_params*) #1

declare dso_local i32 @ieee80211_adjust_monitor_flags(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_configure_filter(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
