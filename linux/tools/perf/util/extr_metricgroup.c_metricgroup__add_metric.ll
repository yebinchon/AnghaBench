; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_metricgroup.c_metricgroup__add_metric.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_metricgroup.c_metricgroup__add_metric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.list_head = type { i32 }
%struct.pmu_events_map = type { %struct.pmu_event* }
%struct.pmu_event = type { i32, i64, i64, i64, i32 }
%struct.egroup = type { i8**, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"metric expr %s for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"found event %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"duration_time\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"}:W,\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"}:W\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.strbuf*, %struct.list_head*)* @metricgroup__add_metric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metricgroup__add_metric(i8* %0, %struct.strbuf* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.pmu_events_map*, align 8
  %9 = alloca %struct.pmu_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.egroup*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %17 = call %struct.pmu_events_map* @perf_pmu__find_map(i32* null)
  store %struct.pmu_events_map* %17, %struct.pmu_events_map** %8, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.pmu_events_map*, %struct.pmu_events_map** %8, align 8
  %21 = icmp ne %struct.pmu_events_map* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %182

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %177, %23
  %25 = load %struct.pmu_events_map*, %struct.pmu_events_map** %8, align 8
  %26 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %25, i32 0, i32 0
  %27 = load %struct.pmu_event*, %struct.pmu_event** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %27, i64 %29
  store %struct.pmu_event* %30, %struct.pmu_event** %9, align 8
  %31 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %32 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %24
  %36 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %37 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %42 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %180

46:                                               ; preds = %40, %35, %24
  %47 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %48 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %177

52:                                               ; preds = %46
  %53 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %54 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @match_metric(i64 %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %61 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @match_metric(i64 %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %176

66:                                               ; preds = %59, %52
  store i32 0, i32* %16, align 4
  %67 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %68 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %72 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %70, i64 %73)
  %75 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %76 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @expr__find_other(i64 %77, i32* null, i8*** %13, i32* %14)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %177

81:                                               ; preds = %66
  %82 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %88 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %81
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %134, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %137

94:                                               ; preds = %90
  %95 = load i8**, i8*** %13, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  %101 = load i8**, i8*** %13, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %94
  %109 = load i32, i32* %12, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %113 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  %115 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %116 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %134

117:                                              ; preds = %94
  %118 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %121, %117
  %125 = phi i1 [ true, %117 ], [ %123, %121 ]
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %128 = load i8**, i8*** %13, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %127, i8* %132)
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %124, %114
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %90

137:                                              ; preds = %90
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %142 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %137
  %144 = call %struct.egroup* @malloc(i32 40)
  store %struct.egroup* %144, %struct.egroup** %15, align 8
  %145 = load %struct.egroup*, %struct.egroup** %15, align 8
  %146 = icmp ne %struct.egroup* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %10, align 4
  br label %180

150:                                              ; preds = %143
  %151 = load i8**, i8*** %13, align 8
  %152 = load %struct.egroup*, %struct.egroup** %15, align 8
  %153 = getelementptr inbounds %struct.egroup, %struct.egroup* %152, i32 0, i32 0
  store i8** %151, i8*** %153, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.egroup*, %struct.egroup** %15, align 8
  %156 = getelementptr inbounds %struct.egroup, %struct.egroup* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %158 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.egroup*, %struct.egroup** %15, align 8
  %161 = getelementptr inbounds %struct.egroup, %struct.egroup* %160, i32 0, i32 5
  store i64 %159, i64* %161, align 8
  %162 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %163 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.egroup*, %struct.egroup** %15, align 8
  %166 = getelementptr inbounds %struct.egroup, %struct.egroup* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  %167 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %168 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.egroup*, %struct.egroup** %15, align 8
  %171 = getelementptr inbounds %struct.egroup, %struct.egroup* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 8
  %172 = load %struct.egroup*, %struct.egroup** %15, align 8
  %173 = getelementptr inbounds %struct.egroup, %struct.egroup* %172, i32 0, i32 2
  %174 = load %struct.list_head*, %struct.list_head** %7, align 8
  %175 = call i32 @list_add_tail(i32* %173, %struct.list_head* %174)
  store i32 0, i32* %10, align 4
  br label %176

176:                                              ; preds = %150, %59
  br label %177

177:                                              ; preds = %176, %80, %51
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %24

180:                                              ; preds = %147, %45
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %22
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.pmu_events_map* @perf_pmu__find_map(i32*) #1

declare dso_local i64 @match_metric(i64, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i64 @expr__find_other(i64, i32*, i8***, i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.egroup* @malloc(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
