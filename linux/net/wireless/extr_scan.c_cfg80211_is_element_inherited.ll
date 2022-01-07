; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_is_element_inherited.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_is_element_inherited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { i64, i32, i32* }

@WLAN_EID_MULTIPLE_BSSID = common dso_local global i64 0, align 8
@WLAN_EID_EXTENSION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_is_element_inherited(%struct.element* %0, %struct.element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.element*, align 8
  %5 = alloca %struct.element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.element* %0, %struct.element** %4, align 8
  store %struct.element* %1, %struct.element** %5, align 8
  %12 = load %struct.element*, %struct.element** %4, align 8
  %13 = getelementptr inbounds %struct.element, %struct.element* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WLAN_EID_MULTIPLE_BSSID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

18:                                               ; preds = %2
  %19 = load %struct.element*, %struct.element** %5, align 8
  %20 = icmp ne %struct.element* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.element*, %struct.element** %5, align 8
  %23 = getelementptr inbounds %struct.element, %struct.element* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %18
  store i32 1, i32* %3, align 4
  br label %115

27:                                               ; preds = %21
  %28 = load %struct.element*, %struct.element** %5, align 8
  %29 = getelementptr inbounds %struct.element, %struct.element* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.element*, %struct.element** %5, align 8
  %34 = getelementptr inbounds %struct.element, %struct.element* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 3, %36
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %115

40:                                               ; preds = %27
  %41 = load %struct.element*, %struct.element** %5, align 8
  %42 = getelementptr inbounds %struct.element, %struct.element* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.element*, %struct.element** %5, align 8
  %50 = getelementptr inbounds %struct.element, %struct.element* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 3, %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %115

58:                                               ; preds = %40
  %59 = load %struct.element*, %struct.element** %4, align 8
  %60 = getelementptr inbounds %struct.element, %struct.element* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WLAN_EID_EXTENSION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %115

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.element*, %struct.element** %5, align 8
  %71 = getelementptr inbounds %struct.element, %struct.element* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 3, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32* %76, i32** %11, align 8
  %77 = load %struct.element*, %struct.element** %4, align 8
  %78 = getelementptr inbounds %struct.element, %struct.element* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  br label %96

82:                                               ; preds = %58
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %115

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %9, align 4
  %88 = load %struct.element*, %struct.element** %5, align 8
  %89 = getelementptr inbounds %struct.element, %struct.element* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32* %91, i32** %11, align 8
  %92 = load %struct.element*, %struct.element** %4, align 8
  %93 = getelementptr inbounds %struct.element, %struct.element* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %86, %68
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %115

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %97

114:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %109, %85, %67, %57, %39, %26, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
