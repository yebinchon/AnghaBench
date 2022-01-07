; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_dev_rename.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_core.c_cfg80211_dev_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@NL80211_CMD_NEW_WIPHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_dev_rename(%struct.cfg80211_registered_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 0
  %11 = call i32 @wiphy_name(%struct.TYPE_3__* %10)
  %12 = call i64 @strcmp(i8* %8, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @cfg80211_dev_check_name(%struct.cfg80211_registered_device* %16, i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %15
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @device_rename(i32* %26, i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %23
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @debugfs_rename(i32 %45, %struct.TYPE_4__* %49, i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %39, %33
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %60 = load i32, i32* @NL80211_CMD_NEW_WIPHY, align 4
  %61 = call i32 @nl80211_notify_wiphy(%struct.cfg80211_registered_device* %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %31, %21, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @wiphy_name(%struct.TYPE_3__*) #1

declare dso_local i32 @cfg80211_dev_check_name(%struct.cfg80211_registered_device*, i8*) #1

declare dso_local i32 @device_rename(i32*, i8*) #1

declare dso_local i32 @debugfs_rename(i32, %struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @nl80211_notify_wiphy(%struct.cfg80211_registered_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
