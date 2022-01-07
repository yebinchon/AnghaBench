; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_extend_noa_desc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_extend_noa_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_noa_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_noa_data*, i64, i32)* @ieee80211_extend_noa_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_extend_noa_desc(%struct.ieee80211_noa_data* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_noa_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_noa_data* %0, %struct.ieee80211_noa_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %17, %25
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 1
  %29 = sub nsw i64 %26, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

33:                                               ; preds = %3
  %34 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %122

43:                                               ; preds = %33
  %44 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %122

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 0, %55
  %57 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @DIV_ROUND_UP(i64 %56, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 255
  br i1 %73, label %74, label %101

74:                                               ; preds = %54
  %75 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %122

91:                                               ; preds = %74
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %92
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %91, %54
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %102, %110
  %112 = sext i32 %111 to i64
  %113 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %114 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %112
  store i64 %121, i64* %119, align 8
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %101, %84, %53, %42, %32
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
