; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_sort_keys.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_create_sort_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, i32, %struct.hist_field**, %struct.tracing_map_sort_key*, %struct.TYPE_2__* }
%struct.hist_field = type { i32 }
%struct.tracing_map_sort_key = type { i32, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRACING_MAP_SORT_KEYS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hitcount\00", align 1
@HIST_FIELD_FL_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*)* @create_sort_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sort_keys(%struct.hist_trigger_data* %0) #0 {
  %2 = alloca %struct.hist_trigger_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tracing_map_sort_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hist_field*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %2, align 8
  %15 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %16 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %21 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %153

25:                                               ; preds = %1
  %26 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %153

32:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %146, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TRACING_MAP_SORT_KEYS_MAX, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %149

37:                                               ; preds = %33
  %38 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %39 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %38, i32 0, i32 3
  %40 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %40, i64 %42
  store %struct.tracing_map_sort_key* %43, %struct.tracing_map_sort_key** %4, align 8
  %44 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %149

54:                                               ; preds = %37
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TRACING_MAP_SORT_KEYS_MAX, align 4
  %57 = sub i32 %56, 1
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %149

65:                                               ; preds = %59, %54
  %66 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %149

72:                                               ; preds = %65
  %73 = load i8*, i8** %12, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @is_descending(i8* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %6, align 4
  br label %149

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %4, align 8
  %86 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %146

87:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %133, %87
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %91 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %136

94:                                               ; preds = %88
  %95 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %96 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %95, i32 0, i32 2
  %97 = load %struct.hist_field**, %struct.hist_field*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %97, i64 %99
  %101 = load %struct.hist_field*, %struct.hist_field** %100, align 8
  store %struct.hist_field* %101, %struct.hist_field** %10, align 8
  %102 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %103 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HIST_FIELD_FL_VAR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %133

109:                                              ; preds = %94
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %9, align 4
  store i32 %110, i32* %14, align 4
  %112 = load %struct.hist_field*, %struct.hist_field** %10, align 8
  %113 = call i8* @hist_field_name(%struct.hist_field* %112, i32 0)
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i64 @strcmp(i8* %114, i8* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %109
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %4, align 8
  %121 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @is_descending(i8* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %6, align 4
  br label %153

128:                                              ; preds = %118
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.tracing_map_sort_key*, %struct.tracing_map_sort_key** %4, align 8
  %131 = getelementptr inbounds %struct.tracing_map_sort_key, %struct.tracing_map_sort_key* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %136

132:                                              ; preds = %109
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %88

136:                                              ; preds = %128, %88
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %139 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %149

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145, %83
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %33

149:                                              ; preds = %142, %81, %69, %62, %53, %33
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %152 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %126, %29, %24
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @is_descending(i8*) #1

declare dso_local i8* @hist_field_name(%struct.hist_field*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
