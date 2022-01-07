; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_prob_rate_reduce_streams.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_prob_rate_reduce_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.minstrel_ht_sta = type { i64*, i64, %struct.minstrel_mcs_group_data*, i32* }
%struct.minstrel_mcs_group_data = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@minstrel_mcs_groups = common dso_local global %struct.TYPE_5__* null, align 8
@MCS_GROUP_RATES = common dso_local global i64 0, align 8
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_ht_sta*)* @minstrel_ht_prob_rate_reduce_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_prob_rate_reduce_streams(%struct.minstrel_ht_sta* %0) #0 {
  %2 = alloca %struct.minstrel_ht_sta*, align 8
  %3 = alloca %struct.minstrel_mcs_group_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @minstrel_mcs_groups, align 8
  %10 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %11 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MCS_GROUP_RATES, align 8
  %16 = udiv i64 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %93, %1
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @minstrel_mcs_groups, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %96

25:                                               ; preds = %20
  %26 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %27 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %26, i32 0, i32 2
  %28 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %28, i64 %30
  store %struct.minstrel_mcs_group_data* %31, %struct.minstrel_mcs_group_data** %3, align 8
  %32 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %33 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %25
  br label %93

45:                                               ; preds = %40
  %46 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %47 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MCS_GROUP_RATES, align 8
  %50 = urem i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %53 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %52, i32 0, i32 2
  %54 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %54, i64 %56
  %58 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %66, i32 %67, i32 %68, i32 %69)
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %45
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @minstrel_mcs_groups, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %83 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %86 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %81, %72, %45
  br label %93

93:                                               ; preds = %92, %44
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %20

96:                                               ; preds = %20
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
