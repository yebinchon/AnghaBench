; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_next_sample.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_next_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_sta_info = type { i64, i32, i64 }

@SAMPLE_COLUMNS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.minstrel_sta_info*)* @minstrel_get_next_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_get_next_sample(%struct.minstrel_sta_info* %0) #0 {
  %2 = alloca %struct.minstrel_sta_info*, align 8
  %3 = alloca i32, align 4
  store %struct.minstrel_sta_info* %0, %struct.minstrel_sta_info** %2, align 8
  %4 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %5 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %6 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %9 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @SAMPLE_TBL(%struct.minstrel_sta_info* %4, i64 %7, i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %13 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %17 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %21 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %26 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %28 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %32 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SAMPLE_COLUMNS, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %2, align 8
  %38 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %24
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @SAMPLE_TBL(%struct.minstrel_sta_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
