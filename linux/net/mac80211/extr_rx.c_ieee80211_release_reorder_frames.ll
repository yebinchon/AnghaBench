; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_release_reorder_frames.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_release_reorder_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.tid_ampdu_rx = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, i32, %struct.sk_buff_head*)* @ieee80211_release_reorder_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_release_reorder_frames(%struct.ieee80211_sub_if_data* %0, %struct.tid_ampdu_rx* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.tid_ampdu_rx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.tid_ampdu_rx* %1, %struct.tid_ampdu_rx** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %10 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %11 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %10, i32 0, i32 2
  %12 = call i32 @lockdep_assert_held(i32* %11)
  br label %13

13:                                               ; preds = %20, %4
  %14 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %15 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ieee80211_sn_less(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %22 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %25 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %29 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %32 = call i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data* %28, %struct.tid_ampdu_rx* %29, i32 %30, %struct.sk_buff_head* %31)
  br label %13

33:                                               ; preds = %13
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @ieee80211_sn_less(i32, i32) #1

declare dso_local i32 @ieee80211_release_reorder_frame(%struct.ieee80211_sub_if_data*, %struct.tid_ampdu_rx*, i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
