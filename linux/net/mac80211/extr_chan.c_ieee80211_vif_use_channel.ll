; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_use_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_use_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_4__, i64, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_chanctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_vif_use_channel(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_chanctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 3
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 2
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @netif_carrier_ok(i64 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ false, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cfg80211_chandef_dfs_required(i32 %37, %struct.cfg80211_chan_def* %38, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %114

47:                                               ; preds = %27
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %52 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BIT(i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %60 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ieee80211_check_combinations(%struct.ieee80211_sub_if_data* %59, %struct.cfg80211_chan_def* %60, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %114

67:                                               ; preds = %55
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %69 = call i32 @__ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %68)
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %71 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call %struct.ieee80211_chanctx* @ieee80211_find_chanctx(%struct.ieee80211_local* %70, %struct.cfg80211_chan_def* %71, i32 %72)
  store %struct.ieee80211_chanctx* %73, %struct.ieee80211_chanctx** %8, align 8
  %74 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %75 = icmp ne %struct.ieee80211_chanctx* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %78 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call %struct.ieee80211_chanctx* @ieee80211_new_chanctx(%struct.ieee80211_local* %77, %struct.cfg80211_chan_def* %78, i32 %79)
  store %struct.ieee80211_chanctx* %80, %struct.ieee80211_chanctx** %8, align 8
  br label %81

81:                                               ; preds = %76, %67
  %82 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %83 = call i64 @IS_ERR(%struct.ieee80211_chanctx* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %87 = call i32 @PTR_ERR(%struct.ieee80211_chanctx* %86)
  store i32 %87, i32* %10, align 4
  br label %114

88:                                               ; preds = %81
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %90 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %91 = call i32 @ieee80211_vif_update_chandef(%struct.ieee80211_sub_if_data* %89, %struct.cfg80211_chan_def* %90)
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %93 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %94 = call i32 @ieee80211_assign_vif_chanctx(%struct.ieee80211_sub_if_data* %92, %struct.ieee80211_chanctx* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %99 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %100 = call i64 @ieee80211_chanctx_refcount(%struct.ieee80211_local* %98, %struct.ieee80211_chanctx* %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %104 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %105 = call i32 @ieee80211_free_chanctx(%struct.ieee80211_local* %103, %struct.ieee80211_chanctx* %104)
  br label %106

106:                                              ; preds = %102, %97
  br label %114

107:                                              ; preds = %88
  %108 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %109 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %110 = call i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local* %108, %struct.ieee80211_chanctx* %109)
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %112 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %8, align 8
  %113 = call i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local* %111, %struct.ieee80211_chanctx* %112)
  br label %114

114:                                              ; preds = %107, %106, %85, %66, %46
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %10, align 4
  ret i32 %124
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @netif_carrier_ok(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(i32, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_check_combinations(%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @__ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_chanctx* @ieee80211_find_chanctx(%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local %struct.ieee80211_chanctx* @ieee80211_new_chanctx(%struct.ieee80211_local*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ieee80211_chanctx*) #1

declare dso_local i32 @PTR_ERR(%struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_vif_update_chandef(%struct.ieee80211_sub_if_data*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ieee80211_assign_vif_chanctx(%struct.ieee80211_sub_if_data*, %struct.ieee80211_chanctx*) #1

declare dso_local i64 @ieee80211_chanctx_refcount(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_free_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_smps_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @ieee80211_recalc_radar_chanctx(%struct.ieee80211_local*, %struct.ieee80211_chanctx*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
