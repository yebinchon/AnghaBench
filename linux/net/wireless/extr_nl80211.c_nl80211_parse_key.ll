; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_parse_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i64* }
%struct.key_parse = type { i32, i32, i64, i64, i32, i64 }

@NL80211_ATTR_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"key with def && defmgmt is invalid\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"defmgmt key must be mcast\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"defmgmt key idx not 4 or 5\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"def key idx not 0-3\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"key idx not 0-5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.key_parse*)* @nl80211_parse_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_parse_key(%struct.genl_info* %0, %struct.key_parse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.key_parse*, align 8
  %6 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.key_parse* %1, %struct.key_parse** %5, align 8
  %7 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %8 = call i32 @memset(%struct.key_parse* %7, i32 0, i32 40)
  %9 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %10 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %12 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %11, i32 0, i32 1
  store i32 -1, i32* %12, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @NL80211_ATTR_KEY, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @NL80211_ATTR_KEY, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %29 = call i32 @nl80211_parse_key_new(%struct.genl_info* %21, i64 %27, %struct.key_parse* %28)
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %32 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %33 = call i32 @nl80211_parse_key_old(%struct.genl_info* %31, %struct.key_parse* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %141

39:                                               ; preds = %34
  %40 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %41 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %46 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %51 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %141

54:                                               ; preds = %44, %39
  %55 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %56 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %61 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %66 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %71 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %141

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %54
  %76 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %77 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %140

80:                                               ; preds = %75
  %81 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %82 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %87 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %92 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 5
  br i1 %94, label %95, label %100

95:                                               ; preds = %90, %85
  %96 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %97 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %141

100:                                              ; preds = %90
  br label %139

101:                                              ; preds = %80
  %102 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %103 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %108 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %113 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 3
  br i1 %115, label %116, label %121

116:                                              ; preds = %111, %106
  %117 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %118 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %141

121:                                              ; preds = %111
  br label %138

122:                                              ; preds = %101
  %123 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %124 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.key_parse*, %struct.key_parse** %5, align 8
  %129 = getelementptr inbounds %struct.key_parse, %struct.key_parse* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %130, 5
  br i1 %131, label %132, label %137

132:                                              ; preds = %127, %122
  %133 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %134 = call i32 @GENL_SET_ERR_MSG(%struct.genl_info* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %141

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %100
  br label %140

140:                                              ; preds = %139, %75
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %132, %116, %95, %69, %49, %37
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @memset(%struct.key_parse*, i32, i32) #1

declare dso_local i32 @nl80211_parse_key_new(%struct.genl_info*, i64, %struct.key_parse*) #1

declare dso_local i32 @nl80211_parse_key_old(%struct.genl_info*, %struct.key_parse*) #1

declare dso_local i32 @GENL_SET_ERR_MSG(%struct.genl_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
