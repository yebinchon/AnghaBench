; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_expected_throughput.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_expected_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_sta_info = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.minstrel_rate_stats }
%struct.minstrel_rate_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @minstrel_get_expected_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_get_expected_throughput(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.minstrel_sta_info*, align 8
  %4 = alloca %struct.minstrel_rate_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.minstrel_sta_info*
  store %struct.minstrel_sta_info* %8, %struct.minstrel_sta_info** %3, align 8
  %9 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %3, align 8
  %10 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %3, align 8
  %15 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.minstrel_rate_stats* %20, %struct.minstrel_rate_stats** %4, align 8
  %21 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %3, align 8
  %22 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %4, align 8
  %28 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @minstrel_get_tp_avg(%struct.TYPE_2__* %26, i32 %29)
  %31 = mul nsw i32 %30, 10
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 1200
  %34 = mul nsw i32 %33, 8
  %35 = sdiv i32 %34, 1024
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @minstrel_get_tp_avg(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
