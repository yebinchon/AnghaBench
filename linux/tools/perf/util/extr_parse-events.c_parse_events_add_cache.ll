; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_cache.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_error = type { i32 }
%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@config_terms = common dso_local global i32 0, align 4
@MAX_NAME_LEN = common dso_local global i32 0, align 4
@perf_evsel__hw_cache = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@perf_evsel__hw_cache_op = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@perf_evsel__hw_cache_result = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_READ = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_ACCESS = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i32 0, align 4
@config_term_common = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_add_cache(%struct.list_head* %0, i32* %1, i8* %2, i8* %3, i8* %4, %struct.parse_events_error* %5, %struct.list_head* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.parse_events_error*, align 8
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca %struct.perf_event_attr, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i8*], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.list_head* %0, %struct.list_head** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.parse_events_error* %5, %struct.parse_events_error** %14, align 8
  store %struct.list_head* %6, %struct.list_head** %15, align 8
  %28 = load i32, i32* @config_terms, align 4
  %29 = call i32 @LIST_HEAD(i32 %28)
  %30 = load i32, i32* @MAX_NAME_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %17, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 0
  %35 = load i8*, i8** %12, align 8
  store i8* %35, i8** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 1
  %37 = load i8*, i8** %13, align 8
  store i8* %37, i8** %36, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @perf_evsel__hw_cache, align 4
  %40 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %41 = call i32 @parse_aliases(i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %7
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %165

47:                                               ; preds = %7
  %48 = load %struct.list_head*, %struct.list_head** %15, align 8
  %49 = call i8* @get_config_name(%struct.list_head* %48)
  store i8* %49, i8** %19, align 8
  %50 = load i32, i32* @MAX_NAME_LEN, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @snprintf(i8* %33, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %53

53:                                               ; preds = %111, %47
  %54 = load i32, i32* %24, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %24, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  br i1 %63, label %64, label %114

64:                                               ; preds = %62
  %65 = load i32, i32* %24, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %27, align 8
  %69 = load i32, i32* %25, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %33, i64 %70
  %72 = load i32, i32* @MAX_NAME_LEN, align 4
  %73 = load i32, i32* %25, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i8*, i8** %27, align 8
  %76 = call i32 @snprintf(i8* %71, i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %25, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %25, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %98

81:                                               ; preds = %64
  %82 = load i8*, i8** %27, align 8
  %83 = load i32, i32* @perf_evsel__hw_cache_op, align 4
  %84 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %85 = call i32 @parse_aliases(i8* %82, i32 %83, i32 %84)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %21, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %21, align 4
  %91 = call i32 @perf_evsel__is_cache_op_valid(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %165

96:                                               ; preds = %88
  br label %111

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %64
  %99 = load i32, i32* %22, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i8*, i8** %27, align 8
  %103 = load i32, i32* @perf_evsel__hw_cache_result, align 4
  %104 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %105 = call i32 @parse_aliases(i8* %102, i32 %103, i32 %104)
  store i32 %105, i32* %22, align 4
  %106 = load i32, i32* %22, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %111

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %98
  br label %111

111:                                              ; preds = %110, %108, %96
  %112 = load i32, i32* %24, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %24, align 4
  br label %53

114:                                              ; preds = %62
  %115 = load i32, i32* %21, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i32, i32* %22, align 4
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  store i32 %123, i32* %22, align 4
  br label %124

124:                                              ; preds = %122, %119
  %125 = call i32 @memset(%struct.perf_event_attr* %16, i32 0, i32 8)
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %21, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 %126, %128
  %130 = load i32, i32* %22, align 4
  %131 = shl i32 %130, 16
  %132 = or i32 %129, %131
  %133 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 0
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  %135 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = load %struct.list_head*, %struct.list_head** %15, align 8
  %137 = icmp ne %struct.list_head* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %124
  %139 = load %struct.list_head*, %struct.list_head** %15, align 8
  %140 = load %struct.parse_events_error*, %struct.parse_events_error** %14, align 8
  %141 = load i32, i32* @config_term_common, align 4
  %142 = call i64 @config_attr(%struct.perf_event_attr* %16, %struct.list_head* %139, %struct.parse_events_error* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %165

147:                                              ; preds = %138
  %148 = load %struct.list_head*, %struct.list_head** %15, align 8
  %149 = call i64 @get_config_terms(%struct.list_head* %148, i32* @config_terms)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %165

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154, %124
  %156 = load %struct.list_head*, %struct.list_head** %9, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i8*, i8** %19, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %162

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %160
  %163 = phi i8* [ %158, %160 ], [ %33, %161 ]
  %164 = call i32 @add_event(%struct.list_head* %156, i32* %157, %struct.perf_event_attr* %16, i8* %163, i32* @config_terms)
  store i32 %164, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %165

165:                                              ; preds = %162, %151, %144, %93, %44
  %166 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @LIST_HEAD(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @parse_aliases(i8*, i32, i32) #1

declare dso_local i8* @get_config_name(%struct.list_head*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @perf_evsel__is_cache_op_valid(i32, i32) #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i64 @config_attr(%struct.perf_event_attr*, %struct.list_head*, %struct.parse_events_error*, i32) #1

declare dso_local i64 @get_config_terms(%struct.list_head*, i32*) #1

declare dso_local i32 @add_event(%struct.list_head*, i32*, %struct.perf_event_attr*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
