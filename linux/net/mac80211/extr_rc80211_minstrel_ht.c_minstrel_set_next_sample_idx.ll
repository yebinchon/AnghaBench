; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_set_next_sample_idx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_set_next_sample_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_ht_sta = type { i64, i32*, %struct.minstrel_mcs_group_data* }
%struct.minstrel_mcs_group_data = type { i64, i64 }

@minstrel_mcs_groups = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i64 0, align 8
@sample_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_ht_sta*)* @minstrel_set_next_sample_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_set_next_sample_idx(%struct.minstrel_ht_sta* %0) #0 {
  %2 = alloca %struct.minstrel_ht_sta*, align 8
  %3 = alloca %struct.minstrel_mcs_group_data*, align 8
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %2, align 8
  br label %4

4:                                                ; preds = %31, %1
  %5 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %6 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @minstrel_mcs_groups, align 4
  %10 = call i64 @ARRAY_SIZE(i32 %9)
  %11 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %12 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = urem i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %16 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %15, i32 0, i32 2
  %17 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %16, align 8
  %18 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %19 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %17, i64 %20
  store %struct.minstrel_mcs_group_data* %21, %struct.minstrel_mcs_group_data** %3, align 8
  %22 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %23 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %2, align 8
  %26 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  br label %4

32:                                               ; preds = %4
  %33 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %34 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* @MCS_GROUP_RATES, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %41 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %43 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* @sample_table, align 4
  %47 = call i64 @ARRAY_SIZE(i32 %46)
  %48 = icmp uge i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %3, align 8
  %51 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %39
  br label %53

53:                                               ; preds = %52, %32
  br label %54

54:                                               ; preds = %53
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
