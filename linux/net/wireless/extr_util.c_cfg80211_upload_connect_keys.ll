; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_upload_connect_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_upload_connect_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_4__*, %struct.net_device*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@CFG80211_MAX_WEP_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to set key %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to set defkey %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_upload_connect_keys(%struct.wireless_dev* %0) #0 {
  %2 = alloca %struct.wireless_dev*, align 8
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %2, align 8
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %8)
  store %struct.cfg80211_registered_device* %9, %struct.cfg80211_registered_device** %3, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %83

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %73, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CFG80211_MAX_WEP_KEYS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %73

36:                                               ; preds = %23
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = call i64 @rdev_add_key(%struct.cfg80211_registered_device* %37, %struct.net_device* %38, i32 %39, i32 0, i32* null, %struct.TYPE_3__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %73

54:                                               ; preds = %36
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @rdev_set_default_key(%struct.cfg80211_registered_device* %63, %struct.net_device* %64, i32 %65, i32 1, i32 1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %73

72:                                               ; preds = %62, %54
  br label %73

73:                                               ; preds = %72, %68, %50, %35
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %19

76:                                               ; preds = %19
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %78 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @kzfree(%struct.TYPE_4__* %79)
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %82, align 8
  br label %83

83:                                               ; preds = %76, %17
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @rdev_add_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @rdev_set_default_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @kzfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
