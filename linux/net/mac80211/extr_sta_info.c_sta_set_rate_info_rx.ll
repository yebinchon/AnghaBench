; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_set_rate_info_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_set_rate_info_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32 }
%struct.rate_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@STA_STATS_RATE_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sta_info*, %struct.rate_info*)* @sta_set_rate_info_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_set_rate_info_rx(%struct.sta_info* %0, %struct.rate_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.rate_info*, align 8
  %6 = alloca i64, align 8
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store %struct.rate_info* %1, %struct.rate_info** %5, align 8
  %7 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %8 = call %struct.TYPE_2__* @sta_get_last_rx_stats(%struct.sta_info* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @READ_ONCE(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @STA_STATS_RATE_INVALID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.rate_info*, %struct.rate_info** %5, align 8
  %24 = call i32 @sta_stats_decode_rate(i32 %21, i64 %22, %struct.rate_info* %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_2__* @sta_get_last_rx_stats(%struct.sta_info*) #1

declare dso_local i32 @sta_stats_decode_rate(i32, i64, %struct.rate_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
