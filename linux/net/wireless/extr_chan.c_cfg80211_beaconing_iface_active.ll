; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_beaconing_iface_active.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_beaconing_iface_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_beaconing_iface_active(%struct.wireless_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %6 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %5)
  %7 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %8 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %38 [
    i32 140, label %17
    i32 132, label %17
    i32 141, label %23
    i32 138, label %29
    i32 131, label %35
    i32 135, label %35
    i32 134, label %35
    i32 137, label %35
    i32 139, label %35
    i32 129, label %35
    i32 133, label %35
    i32 136, label %35
    i32 130, label %36
    i32 128, label %36
  ]

17:                                               ; preds = %13, %13
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %13
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %13
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13
  br label %38

36:                                               ; preds = %13, %13
  %37 = call i32 @WARN_ON(i32 1)
  br label %38

38:                                               ; preds = %36, %13, %35, %29, %23, %17
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
