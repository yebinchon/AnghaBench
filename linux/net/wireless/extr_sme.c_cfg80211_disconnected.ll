; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32* }

@EVENT_DISCONNECTED = common dso_local global i32 0, align 4
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_disconnected(%struct.net_device* %0, i32 %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca %struct.cfg80211_registered_device*, align 8
  %15 = alloca %struct.cfg80211_event*, align 8
  %16 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %13, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %22)
  store %struct.cfg80211_registered_device* %23, %struct.cfg80211_registered_device** %14, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add i64 40, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.cfg80211_event* @kzalloc(i32 %26, i32 %27)
  store %struct.cfg80211_event* %28, %struct.cfg80211_event** %15, align 8
  %29 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %30 = icmp ne %struct.cfg80211_event* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %6
  br label %79

32:                                               ; preds = %6
  %33 = load i32, i32* @EVENT_DISCONNECTED, align 4
  %34 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %35 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %37 = bitcast %struct.cfg80211_event* %36 to i32*
  %38 = getelementptr inbounds i32, i32* %37, i64 40
  %39 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %40 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32* %38, i32** %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %44 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %47 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @memcpy(i8* %50, i32* %51, i64 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %56 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %60 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.cfg80211_event*, %struct.cfg80211_event** %15, align 8
  %67 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %66, i32 0, i32 0
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 1
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @cfg80211_wq, align 4
  %76 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, align 8
  %77 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %76, i32 0, i32 0
  %78 = call i32 @queue_work(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %32, %31
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
