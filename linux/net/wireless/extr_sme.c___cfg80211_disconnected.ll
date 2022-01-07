; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_disconnected.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_9__, i32*, i64, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@cfg80211_disconnect_work = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_disconnected(%struct.net_device* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %11, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %12, align 8
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %22 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %28, %5
  %35 = phi i1 [ false, %5 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %120

40:                                               ; preds = %34
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 5
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 5
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = call i32 @cfg80211_unhold_bss(%struct.TYPE_10__* %48)
  %50 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %51 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 5
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = call i32 @cfg80211_put_bss(i32 %52, i32* %56)
  br label %58

58:                                               ; preds = %45, %40
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %60, align 8
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %64 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kzfree(i32* %67)
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @nl80211_send_disconnected(%struct.cfg80211_registered_device* %71, %struct.net_device* %72, i32 %73, i32* %74, i64 %75, i32 %76)
  %78 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %79 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %58
  %85 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %86 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %91 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %93 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %94 = call i32 @rdev_crit_proto_stop(%struct.cfg80211_registered_device* %92, %struct.wireless_dev* %93)
  br label %95

95:                                               ; preds = %89, %84, %58
  %96 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %97 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %111, %102
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 6
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @rdev_del_key(%struct.cfg80211_registered_device* %107, %struct.net_device* %108, i32 %109, i32 0, i32* null)
  br label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %103

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %95
  %116 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = call i32 @rdev_set_qos_map(%struct.cfg80211_registered_device* %116, %struct.net_device* %117, i32* null)
  %119 = call i32 @schedule_work(i32* @cfg80211_disconnect_work)
  br label %120

120:                                              ; preds = %115, %39
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_10__*) #1

declare dso_local i32 @cfg80211_put_bss(i32, i32*) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @nl80211_send_disconnected(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i64, i32) #1

declare dso_local i32 @rdev_crit_proto_stop(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @rdev_del_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @rdev_set_qos_map(%struct.cfg80211_registered_device*, %struct.net_device*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
