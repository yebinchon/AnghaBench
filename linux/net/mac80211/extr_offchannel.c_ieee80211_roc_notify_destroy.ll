; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_roc_notify_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_roc_notify_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_roc_work = type { i32, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_roc_work*)* @ieee80211_roc_notify_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_roc_notify_destroy(%struct.ieee80211_roc_work* %0) #0 {
  %2 = alloca %struct.ieee80211_roc_work*, align 8
  store %struct.ieee80211_roc_work* %0, %struct.ieee80211_roc_work** %2, align 8
  %3 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %3, i32 0, i32 5
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %20, i32 0, i32 5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @cfg80211_mgmt_tx_status(i32* %11, i32 %14, i32 %19, i32 %24, i32 0, i32 %25)
  %27 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %33, i32 0, i32 5
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @ieee80211_free_txskb(i32* %32, %struct.TYPE_6__* %35)
  br label %37

37:                                               ; preds = %7, %1
  %38 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @cfg80211_remain_on_channel_expired(i32* %46, i32 %49, i32 %52, i32 %53)
  br label %68

55:                                               ; preds = %37
  %56 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %57 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @cfg80211_tx_mgmt_expired(i32* %59, i32 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %55, %42
  %69 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %69, i32 0, i32 0
  %71 = call i32 @list_del(i32* %70)
  %72 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %2, align 8
  %73 = call i32 @kfree(%struct.ieee80211_roc_work* %72)
  ret void
}

declare dso_local i32 @cfg80211_mgmt_tx_status(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_txskb(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @cfg80211_remain_on_channel_expired(i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_tx_mgmt_expired(i32*, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.ieee80211_roc_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
