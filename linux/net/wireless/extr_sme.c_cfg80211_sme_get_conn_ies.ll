; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_sme_get_conn_ies.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_sme_get_conn_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@WLAN_EID_EXT_CAPABILITY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cfg80211_sme_get_conn_ies.before_extcapa = internal constant [6 x i64] [i64 129, i64 131, i64 130, i64 132, i64 128, i64 133], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*, i64*, i64, i64**, i64*)* @cfg80211_sme_get_conn_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_sme_get_conn_ies(%struct.wireless_dev* %0, i64* %1, i64 %2, i64** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64** %3, i64*** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %12, align 8
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load i64*, i64** %8, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i64, i64* @WLAN_EID_EXT_CAPABILITY, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @cfg80211_find_ie(i64 %28, i64* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27, %5
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64* @kmemdup(i64* %34, i64 %35, i32 %36)
  %38 = load i64**, i64*** %10, align 8
  store i64* %37, i64** %38, align 8
  %39 = load i64**, i64*** %10, align 8
  %40 = load i64*, i64** %39, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %128

45:                                               ; preds = %33
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %11, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %6, align 4
  br label %128

48:                                               ; preds = %27, %24
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %49, %53
  %55 = add i64 %54, 2
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i64* @kmalloc(i64 %55, i32 %56)
  store i64* %57, i64** %13, align 8
  %58 = load i64*, i64** %13, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %128

63:                                               ; preds = %48
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %63
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([6 x i64], [6 x i64]* @cfg80211_sme_get_conn_ies.before_extcapa, i64 0, i64 0))
  %70 = call i64 @ieee80211_ie_split(i64* %67, i64 %68, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @cfg80211_sme_get_conn_ies.before_extcapa, i64 0, i64 0), i32 %69, i32 0)
  store i64 %70, i64* %14, align 8
  %71 = load i64*, i64** %13, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @memcpy(i64* %71, i64* %72, i64 %73)
  %75 = load i64*, i64** %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %79 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %14, align 8
  %89 = sub i64 %87, %88
  %90 = call i32 @memcpy(i64* %83, i64* %86, i64 %89)
  br label %92

91:                                               ; preds = %63
  store i64 0, i64* %14, align 8
  br label %92

92:                                               ; preds = %91, %66
  %93 = load i64, i64* @WLAN_EID_EXT_CAPABILITY, align 8
  %94 = load i64*, i64** %13, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %93, i64* %96, align 8
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %98 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 1
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 %100, i64* %104, align 8
  %105 = load i64*, i64** %13, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %110 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %114 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @memcpy(i64* %108, i64* %112, i64 %116)
  %118 = load i64*, i64** %13, align 8
  %119 = load i64**, i64*** %10, align 8
  store i64* %118, i64** %119, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %122 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %120, %124
  %126 = add i64 %125, 2
  %127 = load i64*, i64** %11, align 8
  store i64 %126, i64* %127, align 8
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %92, %60, %45, %42
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i64 @cfg80211_find_ie(i64, i64*, i64) #1

declare dso_local i64* @kmemdup(i64*, i64, i32) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i64 @ieee80211_ie_split(i64*, i64, i64*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
