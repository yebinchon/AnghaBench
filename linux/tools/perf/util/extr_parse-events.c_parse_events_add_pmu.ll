; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_add_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_state = type { i32, %struct.parse_events_error* }
%struct.parse_events_error = type { i32* }
%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.perf_pmu_info = type { i32, i32, i32, i32, i32, i32 }
%struct.perf_pmu = type { i32, i64, i64 }
%struct.evsel = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@config_terms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Cannot find PMU `%s'. Missing kernel support?\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@config_term_pmu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_add_pmu(%struct.parse_events_state* %0, %struct.list_head* %1, i8* %2, %struct.list_head* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.parse_events_state*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.perf_event_attr, align 4
  %15 = alloca %struct.perf_pmu_info, align 4
  %16 = alloca %struct.perf_pmu*, align 8
  %17 = alloca %struct.evsel*, align 8
  %18 = alloca %struct.parse_events_error*, align 8
  %19 = alloca i32, align 4
  store %struct.parse_events_state* %0, %struct.parse_events_state** %8, align 8
  store %struct.list_head* %1, %struct.list_head** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.list_head* %3, %struct.list_head** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.parse_events_state*, %struct.parse_events_state** %8, align 8
  %21 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %20, i32 0, i32 1
  %22 = load %struct.parse_events_error*, %struct.parse_events_error** %21, align 8
  store %struct.parse_events_error* %22, %struct.parse_events_error** %18, align 8
  %23 = load i32, i32* @config_terms, align 4
  %24 = call i32 @LIST_HEAD(i32 %23)
  %25 = load i8*, i8** %10, align 8
  %26 = call %struct.perf_pmu* @perf_pmu__find(i8* %25)
  store %struct.perf_pmu* %26, %struct.perf_pmu** %16, align 8
  %27 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %28 = icmp ne %struct.perf_pmu* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %6
  %30 = load %struct.parse_events_error*, %struct.parse_events_error** %18, align 8
  %31 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %30, i32 0, i32 0
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @asprintf(i32** %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.parse_events_error*, %struct.parse_events_error** %18, align 8
  %37 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %182

41:                                               ; preds = %6
  %42 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %43 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %48 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memcpy(%struct.perf_event_attr* %14, i64 %49, i32 4)
  br label %53

51:                                               ; preds = %41
  %52 = call i32 @memset(%struct.perf_event_attr* %14, i32 0, i32 4)
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %55 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i1 [ false, %53 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %19, align 4
  %64 = load %struct.list_head*, %struct.list_head** %11, align 8
  %65 = icmp ne %struct.list_head* %64, null
  br i1 %65, label %89, label %66

66:                                               ; preds = %61
  %67 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %68 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.list_head*, %struct.list_head** %9, align 8
  %72 = load %struct.parse_events_state*, %struct.parse_events_state** %8, align 8
  %73 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %72, i32 0, i32 0
  %74 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call %struct.evsel* @__add_event(%struct.list_head* %71, i32* %73, %struct.perf_event_attr* %14, i32* null, %struct.perf_pmu* %74, i32* null, i32 %75, i32* null)
  store %struct.evsel* %76, %struct.evsel** %17, align 8
  %77 = load %struct.evsel*, %struct.evsel** %17, align 8
  %78 = icmp ne %struct.evsel* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load i8*, i8** %10, align 8
  %81 = load %struct.evsel*, %struct.evsel** %17, align 8
  %82 = getelementptr inbounds %struct.evsel, %struct.evsel* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load %struct.evsel*, %struct.evsel** %17, align 8
  %85 = getelementptr inbounds %struct.evsel, %struct.evsel* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %7, align 4
  br label %182

86:                                               ; preds = %66
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %182

89:                                               ; preds = %61
  %90 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %91 = load %struct.list_head*, %struct.list_head** %11, align 8
  %92 = call i64 @perf_pmu__check_alias(%struct.perf_pmu* %90, %struct.list_head* %91, %struct.perf_pmu_info* %15)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %182

97:                                               ; preds = %89
  %98 = load %struct.list_head*, %struct.list_head** %11, align 8
  %99 = load %struct.parse_events_state*, %struct.parse_events_state** %8, align 8
  %100 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %99, i32 0, i32 1
  %101 = load %struct.parse_events_error*, %struct.parse_events_error** %100, align 8
  %102 = load i32, i32* @config_term_pmu, align 4
  %103 = call i64 @config_attr(%struct.perf_event_attr* %14, %struct.list_head* %98, %struct.parse_events_error* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %182

108:                                              ; preds = %97
  %109 = load %struct.list_head*, %struct.list_head** %11, align 8
  %110 = call i64 @get_config_terms(%struct.list_head* %109, i32* @config_terms)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %182

115:                                              ; preds = %108
  %116 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %117 = load %struct.list_head*, %struct.list_head** %11, align 8
  %118 = load %struct.parse_events_state*, %struct.parse_events_state** %8, align 8
  %119 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %118, i32 0, i32 1
  %120 = load %struct.parse_events_error*, %struct.parse_events_error** %119, align 8
  %121 = call i64 @perf_pmu__config(%struct.perf_pmu* %116, %struct.perf_event_attr* %14, %struct.list_head* %117, %struct.parse_events_error* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %182

126:                                              ; preds = %115
  %127 = load %struct.list_head*, %struct.list_head** %9, align 8
  %128 = load %struct.parse_events_state*, %struct.parse_events_state** %8, align 8
  %129 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %128, i32 0, i32 0
  %130 = load %struct.list_head*, %struct.list_head** %11, align 8
  %131 = call i32* @get_config_name(%struct.list_head* %130)
  %132 = load %struct.perf_pmu*, %struct.perf_pmu** %16, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call %struct.evsel* @__add_event(%struct.list_head* %127, i32* %129, %struct.perf_event_attr* %14, i32* %131, %struct.perf_pmu* %132, i32* @config_terms, i32 %133, i32* null)
  store %struct.evsel* %134, %struct.evsel** %17, align 8
  %135 = load %struct.evsel*, %struct.evsel** %17, align 8
  %136 = icmp ne %struct.evsel* %135, null
  br i1 %136, label %137, label %173

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.perf_pmu_info, %struct.perf_pmu_info* %15, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.evsel*, %struct.evsel** %17, align 8
  %141 = getelementptr inbounds %struct.evsel, %struct.evsel* %140, i32 0, i32 9
  store i32 %139, i32* %141, align 8
  %142 = getelementptr inbounds %struct.perf_pmu_info, %struct.perf_pmu_info* %15, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.evsel*, %struct.evsel** %17, align 8
  %145 = getelementptr inbounds %struct.evsel, %struct.evsel* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 4
  %146 = getelementptr inbounds %struct.perf_pmu_info, %struct.perf_pmu_info* %15, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.evsel*, %struct.evsel** %17, align 8
  %149 = getelementptr inbounds %struct.evsel, %struct.evsel* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = getelementptr inbounds %struct.perf_pmu_info, %struct.perf_pmu_info* %15, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.evsel*, %struct.evsel** %17, align 8
  %153 = getelementptr inbounds %struct.evsel, %struct.evsel* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 4
  %154 = getelementptr inbounds %struct.perf_pmu_info, %struct.perf_pmu_info* %15, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.evsel*, %struct.evsel** %17, align 8
  %157 = getelementptr inbounds %struct.evsel, %struct.evsel* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = getelementptr inbounds %struct.perf_pmu_info, %struct.perf_pmu_info* %15, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.evsel*, %struct.evsel** %17, align 8
  %161 = getelementptr inbounds %struct.evsel, %struct.evsel* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = load %struct.evsel*, %struct.evsel** %17, align 8
  %164 = getelementptr inbounds %struct.evsel, %struct.evsel* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* %19, align 4
  %166 = load %struct.evsel*, %struct.evsel** %17, align 8
  %167 = getelementptr inbounds %struct.evsel, %struct.evsel* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load %struct.evsel*, %struct.evsel** %17, align 8
  %169 = getelementptr inbounds %struct.evsel, %struct.evsel* %168, i32 0, i32 2
  %170 = call i32 @config_term_percore(i32* %169)
  %171 = load %struct.evsel*, %struct.evsel** %17, align 8
  %172 = getelementptr inbounds %struct.evsel, %struct.evsel* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %137, %126
  %174 = load %struct.evsel*, %struct.evsel** %17, align 8
  %175 = icmp ne %struct.evsel* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %180

177:                                              ; preds = %173
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  br label %180

180:                                              ; preds = %177, %176
  %181 = phi i32 [ 0, %176 ], [ %179, %177 ]
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %180, %123, %112, %105, %94, %86, %79, %38
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.perf_pmu* @perf_pmu__find(i8*) #1

declare dso_local i64 @asprintf(i32**, i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.perf_event_attr*, i64, i32) #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local %struct.evsel* @__add_event(%struct.list_head*, i32*, %struct.perf_event_attr*, i32*, %struct.perf_pmu*, i32*, i32, i32*) #1

declare dso_local i64 @perf_pmu__check_alias(%struct.perf_pmu*, %struct.list_head*, %struct.perf_pmu_info*) #1

declare dso_local i64 @config_attr(%struct.perf_event_attr*, %struct.list_head*, %struct.parse_events_error*, i32) #1

declare dso_local i64 @get_config_terms(%struct.list_head*, i32*) #1

declare dso_local i64 @perf_pmu__config(%struct.perf_pmu*, %struct.perf_event_attr*, %struct.list_head*, %struct.parse_events_error*) #1

declare dso_local i32* @get_config_name(%struct.list_head*) #1

declare dso_local i32 @config_term_percore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
