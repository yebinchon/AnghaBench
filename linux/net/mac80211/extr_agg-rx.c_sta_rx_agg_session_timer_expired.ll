; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c_sta_rx_agg_session_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c_sta_rx_agg_session_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_ampdu_rx = type { i64, i32, i32, i32, %struct.sta_info* }
%struct.sta_info = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@session_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RX session timer expired on %pM tid %d\0A\00", align 1
@tid_rx = common dso_local global %struct.tid_ampdu_rx* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sta_rx_agg_session_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_rx_agg_session_timer_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tid_ampdu_rx*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %3, align 8
  %8 = ptrtoint %struct.tid_ampdu_rx* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @session_timer, align 4
  %11 = call %struct.tid_ampdu_rx* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.tid_ampdu_rx* %11, %struct.tid_ampdu_rx** %3, align 8
  %12 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %3, align 8
  %13 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %12, i32 0, i32 4
  %14 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  store %struct.sta_info* %14, %struct.sta_info** %4, align 8
  %15 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %3, align 8
  %16 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %3, align 8
  %19 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %3, align 8
  %22 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @TU_TO_JIFFIES(i32 %23)
  %25 = add i64 %20, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @time_is_after_jiffies(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %3, align 8
  %31 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @mod_timer(i32* %31, i64 %32)
  br label %58

34:                                               ; preds = %1
  %35 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ht_dbg(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_bit(i32 %44, i32 %48)
  %50 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @ieee80211_queue_work(i32* %53, i32* %56)
  br label %58

58:                                               ; preds = %34, %29
  ret void
}

declare dso_local %struct.tid_ampdu_rx* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @TU_TO_JIFFIES(i32) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ht_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
