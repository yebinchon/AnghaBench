; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_set_cipher_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_set_cipher_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@IW_AUTH_CIPHER_WEP40 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@IW_AUTH_CIPHER_WEP104 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@IW_AUTH_CIPHER_TKIP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@IW_AUTH_CIPHER_CCMP = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@IW_AUTH_CIPHER_AES_CMAC = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@IW_AUTH_CIPHER_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*, i32)* @cfg80211_set_cipher_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_set_cipher_group(%struct.wireless_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IW_AUTH_CIPHER_WEP40, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i64 %11, i64* %16, align 8
  br label %84

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IW_AUTH_CIPHER_WEP104, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 %23, i64* %28, align 8
  br label %83

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IW_AUTH_CIPHER_TKIP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %35, i64* %40, align 8
  br label %82

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IW_AUTH_CIPHER_CCMP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  br label %81

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @IW_AUTH_CIPHER_AES_CMAC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %59, i64* %64, align 8
  br label %80

65:                                               ; preds = %53
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IW_AUTH_CIPHER_NONE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %46
  br label %82

82:                                               ; preds = %81, %34
  br label %83

83:                                               ; preds = %82, %22
  br label %84

84:                                               ; preds = %83, %10
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %76
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
