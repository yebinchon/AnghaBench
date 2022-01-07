; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_handle_roc_started.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_handle_roc_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_roc_work = type { i32, i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_roc_work*, i64)* @ieee80211_handle_roc_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_handle_roc_started(%struct.ieee80211_roc_work* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_roc_work*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_roc_work* %0, %struct.ieee80211_roc_work** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %6 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %65

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %15, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %11
  %22 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %21
  %31 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %31, i32 0, i32 6
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ieee80211_tx_skb_tid_band(%struct.TYPE_3__* %33, i32* %36, i32 7, i32 %41, i32 0)
  %43 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %44 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %43, i32 0, i32 7
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %30, %21
  br label %62

46:                                               ; preds = %11
  %47 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %47, i32 0, i32 6
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %52 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @cfg80211_ready_on_channel(i32* %50, i32 %53, %struct.TYPE_4__* %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %46, %45
  %63 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %3, align 8
  %64 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %10
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_tx_skb_tid_band(%struct.TYPE_3__*, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_ready_on_channel(i32*, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
