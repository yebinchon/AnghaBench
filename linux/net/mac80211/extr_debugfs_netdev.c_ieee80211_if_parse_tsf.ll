; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_ieee80211_if_parse_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"debugfs reset TSF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"debugfs offset TSF by %018lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"debugfs set TSF to %#018llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i8*, i32)* @ieee80211_if_parse_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_if_parse_tsf(%struct.ieee80211_sub_if_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %28 = call i32 @drv_reset_tsf(%struct.ieee80211_local* %26, %struct.ieee80211_sub_if_data* %27)
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @wiphy_info(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %25, %18
  br label %133

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  br label %62

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 45
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 -1, i32* %11, align 4
  br label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %138

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %62, %38, %35
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @kstrtoull(i8* %66, i32 10, i64* %9)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %138

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %9, align 8
  %88 = mul i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @drv_offset_tsf(%struct.ieee80211_local* %83, %struct.ieee80211_sub_if_data* %84, i32 %89)
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %92 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %9, align 8
  %98 = mul i64 %96, %97
  %99 = call i32 (i32, i8*, ...) @wiphy_info(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  br label %132

100:                                              ; preds = %75, %72
  %101 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %100
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %113 = call i32 @drv_get_tsf(%struct.ieee80211_local* %111, %struct.ieee80211_sub_if_data* %112)
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %9, align 8
  %118 = mul i64 %116, %117
  %119 = add i64 %114, %118
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %110, %107
  %121 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %122 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @drv_set_tsf(%struct.ieee80211_local* %121, %struct.ieee80211_sub_if_data* %122, i64 %123)
  %125 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = call i32 (i32, i8*, ...) @wiphy_info(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %120, %100
  br label %132

132:                                              ; preds = %131, %82
  br label %133

133:                                              ; preds = %132, %34
  %134 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %135 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %136 = call i32 @ieee80211_recalc_dtim(%struct.ieee80211_local* %134, %struct.ieee80211_sub_if_data* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %133, %70, %58
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @drv_reset_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @wiphy_info(i32, i8*, ...) #1

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @drv_offset_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @drv_get_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_set_tsf(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i64) #1

declare dso_local i32 @ieee80211_recalc_dtim(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
