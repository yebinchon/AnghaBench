; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_get_profile_continuation.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_get_profile_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i64*, i32, i64 }

@WLAN_EID_MULTIPLE_BSSID = common dso_local global i32 0, align 4
@WLAN_EID_NON_TX_BSSID_CAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.element* (i64*, i64, %struct.element*, %struct.element*)* @cfg80211_get_profile_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.element* @cfg80211_get_profile_continuation(i64* %0, i64 %1, %struct.element* %2, %struct.element* %3) #0 {
  %5 = alloca %struct.element*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.element*, align 8
  %9 = alloca %struct.element*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.element*, align 8
  %12 = alloca %struct.element*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.element* %2, %struct.element** %8, align 8
  store %struct.element* %3, %struct.element** %9, align 8
  %13 = load %struct.element*, %struct.element** %8, align 8
  %14 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.element*, %struct.element** %8, align 8
  %17 = getelementptr inbounds %struct.element, %struct.element* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %15, i64 %19
  store i64* %20, i64** %10, align 8
  %21 = load i32, i32* @WLAN_EID_MULTIPLE_BSSID, align 4
  %22 = load i64*, i64** %10, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = ptrtoint i64* %24 to i64
  %27 = ptrtoint i64* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = sub i64 %23, %29
  %31 = call %struct.element* @cfg80211_find_elem(i32 %21, i64* %22, i64 %30)
  store %struct.element* %31, %struct.element** %11, align 8
  %32 = load %struct.element*, %struct.element** %9, align 8
  %33 = getelementptr inbounds %struct.element, %struct.element* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.element*, %struct.element** %9, align 8
  %36 = getelementptr inbounds %struct.element, %struct.element* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  %40 = load i64*, i64** %10, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 -1
  %42 = icmp ult i64* %39, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %4
  %44 = load %struct.element*, %struct.element** %11, align 8
  %45 = icmp ne %struct.element* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %4
  store %struct.element* null, %struct.element** %5, align 8
  br label %102

47:                                               ; preds = %43
  %48 = load %struct.element*, %struct.element** %11, align 8
  %49 = getelementptr inbounds %struct.element, %struct.element* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store %struct.element* null, %struct.element** %5, align 8
  br label %102

53:                                               ; preds = %47
  %54 = load %struct.element*, %struct.element** %11, align 8
  %55 = getelementptr inbounds %struct.element, %struct.element* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = bitcast i64* %57 to i8*
  %59 = bitcast i8* %58 to %struct.element*
  store %struct.element* %59, %struct.element** %12, align 8
  %60 = load %struct.element*, %struct.element** %11, align 8
  %61 = getelementptr inbounds %struct.element, %struct.element* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.element*, %struct.element** %11, align 8
  %64 = getelementptr inbounds %struct.element, %struct.element* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  %68 = load %struct.element*, %struct.element** %12, align 8
  %69 = getelementptr inbounds %struct.element, %struct.element* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.element*, %struct.element** %12, align 8
  %72 = getelementptr inbounds %struct.element, %struct.element* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %70, i64 %74
  %76 = icmp ult i64* %67, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %53
  store %struct.element* null, %struct.element** %5, align 8
  br label %102

78:                                               ; preds = %53
  %79 = load %struct.element*, %struct.element** %12, align 8
  %80 = getelementptr inbounds %struct.element, %struct.element* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.element*, %struct.element** %12, align 8
  %85 = getelementptr inbounds %struct.element, %struct.element* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %78
  store %struct.element* null, %struct.element** %5, align 8
  br label %102

89:                                               ; preds = %83
  %90 = load %struct.element*, %struct.element** %12, align 8
  %91 = getelementptr inbounds %struct.element, %struct.element* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WLAN_EID_NON_TX_BSSID_CAP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %100

98:                                               ; preds = %89
  %99 = load %struct.element*, %struct.element** %11, align 8
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi %struct.element* [ null, %97 ], [ %99, %98 ]
  store %struct.element* %101, %struct.element** %5, align 8
  br label %102

102:                                              ; preds = %100, %88, %77, %52, %46
  %103 = load %struct.element*, %struct.element** %5, align 8
  ret %struct.element* %103
}

declare dso_local %struct.element* @cfg80211_find_elem(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
