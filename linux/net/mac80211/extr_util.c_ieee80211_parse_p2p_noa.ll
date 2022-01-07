; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_parse_p2p_noa.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_parse_p2p_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_p2p_noa_attr = type { %struct.ieee80211_p2p_noa_desc* }
%struct.ieee80211_p2p_noa_desc = type { i32, i32, i32, i32 }
%struct.ieee80211_noa_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@IEEE80211_P2P_NOA_DESC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_parse_p2p_noa(%struct.ieee80211_p2p_noa_attr* %0, %struct.ieee80211_noa_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_p2p_noa_attr*, align 8
  %5 = alloca %struct.ieee80211_noa_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_p2p_noa_desc*, align 8
  store %struct.ieee80211_p2p_noa_attr* %0, %struct.ieee80211_p2p_noa_attr** %4, align 8
  store %struct.ieee80211_noa_data* %1, %struct.ieee80211_noa_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %11 = call i32 @memset(%struct.ieee80211_noa_data* %10, i32 0, i32 16)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %110, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @IEEE80211_P2P_NOA_DESC_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %113

16:                                               ; preds = %12
  %17 = load %struct.ieee80211_p2p_noa_attr*, %struct.ieee80211_p2p_noa_attr** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_p2p_noa_desc*, %struct.ieee80211_p2p_noa_desc** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, %struct.ieee80211_p2p_noa_desc* %19, i64 %21
  store %struct.ieee80211_p2p_noa_desc* %22, %struct.ieee80211_p2p_noa_desc** %9, align 8
  %23 = load %struct.ieee80211_p2p_noa_desc*, %struct.ieee80211_p2p_noa_desc** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, %struct.ieee80211_p2p_noa_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.ieee80211_p2p_noa_desc*, %struct.ieee80211_p2p_noa_desc** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, %struct.ieee80211_p2p_noa_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %16
  br label %110

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_p2p_noa_desc*, %struct.ieee80211_p2p_noa_desc** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, %struct.ieee80211_p2p_noa_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.ieee80211_p2p_noa_desc*, %struct.ieee80211_p2p_noa_desc** %9, align 8
  %44 = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, %struct.ieee80211_p2p_noa_desc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %46, i8** %53, align 8
  %54 = load %struct.ieee80211_p2p_noa_desc*, %struct.ieee80211_p2p_noa_desc** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, %struct.ieee80211_p2p_noa_desc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %57, i8** %64, align 8
  %65 = load %struct.ieee80211_p2p_noa_desc*, %struct.ieee80211_p2p_noa_desc** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_p2p_noa_desc, %struct.ieee80211_p2p_noa_desc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i8* %68, i8** %75, align 8
  %76 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %103

84:                                               ; preds = %33
  %85 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_noa_data, %struct.ieee80211_noa_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ult i8* %92, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %84
  br label %110

103:                                              ; preds = %84, %33
  %104 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ieee80211_extend_noa_desc(%struct.ieee80211_noa_data* %104, i32 %105, i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %103, %102, %32
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %12

113:                                              ; preds = %12
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.ieee80211_noa_data*, %struct.ieee80211_noa_data** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @ieee80211_update_p2p_noa(%struct.ieee80211_noa_data* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.ieee80211_noa_data*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ieee80211_extend_noa_desc(%struct.ieee80211_noa_data*, i32, i32) #1

declare dso_local i32 @ieee80211_update_p2p_noa(%struct.ieee80211_noa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
