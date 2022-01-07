; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_get_key_seq.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_get_key_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32*, %struct.ieee80211_key_seq*)* }
%struct.ieee80211_key = type { i32 }
%struct.ieee80211_key_seq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_key*, %struct.ieee80211_key_seq*)* @drv_get_key_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_get_key_seq(%struct.ieee80211_local* %0, %struct.ieee80211_key* %1, %struct.ieee80211_key_seq* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_key*, align 8
  %6 = alloca %struct.ieee80211_key_seq*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %5, align 8
  store %struct.ieee80211_key_seq* %2, %struct.ieee80211_key_seq** %6, align 8
  %7 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32*, i32*, %struct.ieee80211_key_seq*)*, i32 (i32*, i32*, %struct.ieee80211_key_seq*)** %10, align 8
  %12 = icmp ne i32 (i32*, i32*, %struct.ieee80211_key_seq*)* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32*, i32*, %struct.ieee80211_key_seq*)*, i32 (i32*, i32*, %struct.ieee80211_key_seq*)** %17, align 8
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %21, i32 0, i32 0
  %23 = load %struct.ieee80211_key_seq*, %struct.ieee80211_key_seq** %6, align 8
  %24 = call i32 %18(i32* %20, i32* %22, %struct.ieee80211_key_seq* %23)
  br label %25

25:                                               ; preds = %13, %3
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %27, i32 0, i32 0
  %29 = call i32 @trace_drv_get_key_seq(%struct.ieee80211_local* %26, i32* %28)
  ret void
}

declare dso_local i32 @trace_drv_get_key_seq(%struct.ieee80211_local*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
