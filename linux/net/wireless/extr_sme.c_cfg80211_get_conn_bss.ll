; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_get_conn_bss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_get_conn_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss = type { i32, i32 }
%struct.wireless_dev = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@CFG80211_CONN_AUTHENTICATE_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_bss* (%struct.wireless_dev*)* @cfg80211_get_conn_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_bss* @cfg80211_get_conn_bss(%struct.wireless_dev* %0) #0 {
  %2 = alloca %struct.cfg80211_bss*, align 8
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %8)
  store %struct.cfg80211_registered_device* %9, %struct.cfg80211_registered_device** %4, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %11 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %10)
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IEEE80211_PRIVACY(i32 %47)
  %49 = call %struct.cfg80211_bss* @cfg80211_get_bss(i32 %14, i32 %20, i32 %26, i32 %32, i32 %38, i32 %41, i32 %48)
  store %struct.cfg80211_bss* %49, %struct.cfg80211_bss** %5, align 8
  %50 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %51 = icmp ne %struct.cfg80211_bss* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %1
  store %struct.cfg80211_bss* null, %struct.cfg80211_bss** %2, align 8
  br label %91

53:                                               ; preds = %1
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %60 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  %74 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %75 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %78 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* @CFG80211_CONN_AUTHENTICATE_NEXT, align 4
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  %87 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %88 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %87, i32 0, i32 0
  %89 = call i32 @schedule_work(i32* %88)
  %90 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  store %struct.cfg80211_bss* %90, %struct.cfg80211_bss** %2, align 8
  br label %91

91:                                               ; preds = %53, %52
  %92 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %2, align 8
  ret %struct.cfg80211_bss* %92
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IEEE80211_PRIVACY(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
