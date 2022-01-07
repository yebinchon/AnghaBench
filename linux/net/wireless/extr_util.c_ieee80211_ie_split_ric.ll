; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_ie_split_ric.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_ie_split_ric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WLAN_EID_EXTENSION = common dso_local global i64 0, align 8
@WLAN_EID_RIC_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ieee80211_ie_split_ric(i64* %0, i64 %1, i64* %2, i32 %3, i64* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %17 = load i64, i64* %14, align 8
  store i64 %17, i64* %15, align 8
  br label %18

18:                                               ; preds = %118, %7
  %19 = load i64, i64* %15, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %119

22:                                               ; preds = %18
  store i64 0, i64* %16, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %15, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WLAN_EID_EXTENSION, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i64 2, i64* %16, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %16, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %9, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %119

37:                                               ; preds = %30
  %38 = load i64*, i64** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i64*, i64** %8, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WLAN_EID_EXTENSION, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ieee80211_id_in_list(i64* %38, i32 %39, i64 %45, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %37
  br label %119

56:                                               ; preds = %37
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WLAN_EID_RIC_DATA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %63
  %67 = load i64*, i64** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i64 @skip_ie(i64* %67, i64 %68, i64 %69)
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %111, %66
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %71
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WLAN_EID_EXTENSION, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i64 2, i64* %16, align 8
  br label %84

83:                                               ; preds = %75
  store i64 0, i64* %16, align 8
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = add i64 %85, %86
  %88 = load i64, i64* %9, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %112

91:                                               ; preds = %84
  %92 = load i64*, i64** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i64*, i64** %8, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %16, align 8
  %97 = add i64 %95, %96
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %16, align 8
  %101 = icmp eq i64 %100, 2
  %102 = zext i1 %101 to i32
  %103 = call i32 @ieee80211_id_in_list(i64* %92, i32 %93, i64 %99, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %91
  %106 = load i64*, i64** %8, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i64 @skip_ie(i64* %106, i64 %107, i64 %108)
  store i64 %109, i64* %15, align 8
  br label %111

110:                                              ; preds = %91
  br label %112

111:                                              ; preds = %105
  br label %71

112:                                              ; preds = %110, %90, %71
  br label %118

113:                                              ; preds = %63, %56
  %114 = load i64*, i64** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i64 @skip_ie(i64* %114, i64 %115, i64 %116)
  store i64 %117, i64* %15, align 8
  br label %118

118:                                              ; preds = %113, %112
  br label %18

119:                                              ; preds = %55, %36, %18
  %120 = load i64, i64* %15, align 8
  ret i64 %120
}

declare dso_local i32 @ieee80211_id_in_list(i64*, i32, i64, i32) #1

declare dso_local i64 @skip_ie(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
