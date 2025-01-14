; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_field = type { i32 }
%struct.hist_trigger_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.trace_event_file = type { i32, %struct.trace_array* }
%struct.trace_array = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@HIST_FIELD_FL_HEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"sym\00", align 1
@HIST_FIELD_FL_SYM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"sym-offset\00", align 1
@HIST_FIELD_FL_SYM_OFFSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"execname\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"common_pid\00", align 1
@HIST_FIELD_FL_EXECNAME = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@HIST_FIELD_FL_SYSCALL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"log2\00", align 1
@HIST_FIELD_FL_LOG2 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"usecs\00", align 1
@HIST_FIELD_FL_TIMESTAMP_USECS = common dso_local global i64 0, align 8
@HIST_ERR_BAD_FIELD_MODIFIER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"common_timestamp\00", align 1
@HIST_FIELD_FL_TIMESTAMP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@HIST_FIELD_FL_CPU = common dso_local global i64 0, align 8
@HIST_ERR_FIELD_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ftrace_event_field* (%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64*)* @parse_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ftrace_event_field* @parse_field(%struct.hist_trigger_data* %0, %struct.trace_event_file* %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.ftrace_event_field*, align 8
  %6 = alloca %struct.hist_trigger_data*, align 8
  %7 = alloca %struct.trace_event_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ftrace_event_field*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.trace_array*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %6, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.ftrace_event_field* null, %struct.ftrace_event_field** %10, align 8
  %15 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %16 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %15, i32 0, i32 1
  %17 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  store %struct.trace_array* %17, %struct.trace_array** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kstrdup(i8* %18, i32 %19)
  store i8* %20, i8** %13, align 8
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ftrace_event_field* @ERR_PTR(i32 %25)
  store %struct.ftrace_event_field* %26, %struct.ftrace_event_field** %5, align 8
  br label %174

27:                                               ; preds = %4
  %28 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %114

31:                                               ; preds = %27
  %32 = load i8*, i8** %12, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i64, i64* @HIST_FIELD_FL_HEX, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = or i64 %38, %36
  store i64 %39, i64* %37, align 8
  br label %113

40:                                               ; preds = %31
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i64, i64* @HIST_FIELD_FL_SYM, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %112

49:                                               ; preds = %40
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i64, i64* @HIST_FIELD_FL_SYM_OFFSET, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %56, %54
  store i64 %57, i64* %55, align 8
  br label %111

58:                                               ; preds = %49
  %59 = load i8*, i8** %12, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i64, i64* @HIST_FIELD_FL_EXECNAME, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = or i64 %69, %67
  store i64 %70, i64* %68, align 8
  br label %110

71:                                               ; preds = %62, %58
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i64, i64* @HIST_FIELD_FL_SYSCALL, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %76
  store i64 %79, i64* %77, align 8
  br label %109

80:                                               ; preds = %71
  %81 = load i8*, i8** %12, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i64, i64* @HIST_FIELD_FL_LOG2, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %85
  store i64 %88, i64* %86, align 8
  br label %108

89:                                               ; preds = %80
  %90 = load i8*, i8** %12, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP_USECS, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = load i64, i64* %95, align 8
  %97 = or i64 %96, %94
  store i64 %97, i64* %95, align 8
  br label %107

98:                                               ; preds = %89
  %99 = load %struct.trace_array*, %struct.trace_array** %14, align 8
  %100 = load i32, i32* @HIST_ERR_BAD_FIELD_MODIFIER, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @errpos(i8* %101)
  %103 = call i32 @hist_err(%struct.trace_array* %99, i32 %100, i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  %106 = call %struct.ftrace_event_field* @ERR_PTR(i32 %105)
  store %struct.ftrace_event_field* %106, %struct.ftrace_event_field** %10, align 8
  br label %170

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %84
  br label %109

109:                                              ; preds = %108, %75
  br label %110

110:                                              ; preds = %109, %66
  br label %111

111:                                              ; preds = %110, %53
  br label %112

112:                                              ; preds = %111, %44
  br label %113

113:                                              ; preds = %112, %35
  br label %114

114:                                              ; preds = %113, %27
  %115 = load i8*, i8** %11, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %114
  %119 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP, align 8
  %120 = load i64*, i64** %9, align 8
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, %119
  store i64 %122, i64* %120, align 8
  %123 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %124 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @HIST_FIELD_FL_TIMESTAMP_USECS, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %118
  %131 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %6, align 8
  %132 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %118
  br label %169

136:                                              ; preds = %114
  %137 = load i8*, i8** %11, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i64, i64* @HIST_FIELD_FL_CPU, align 8
  %142 = load i64*, i64** %9, align 8
  %143 = load i64, i64* %142, align 8
  %144 = or i64 %143, %141
  store i64 %144, i64* %142, align 8
  br label %168

145:                                              ; preds = %136
  %146 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %147 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call %struct.ftrace_event_field* @trace_find_event_field(i32 %148, i8* %149)
  store %struct.ftrace_event_field* %150, %struct.ftrace_event_field** %10, align 8
  %151 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  %152 = icmp ne %struct.ftrace_event_field* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  %155 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %153, %145
  %159 = load %struct.trace_array*, %struct.trace_array** %14, align 8
  %160 = load i32, i32* @HIST_ERR_FIELD_NOT_FOUND, align 4
  %161 = load i8*, i8** %11, align 8
  %162 = call i32 @errpos(i8* %161)
  %163 = call i32 @hist_err(%struct.trace_array* %159, i32 %160, i32 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  %166 = call %struct.ftrace_event_field* @ERR_PTR(i32 %165)
  store %struct.ftrace_event_field* %166, %struct.ftrace_event_field** %10, align 8
  br label %170

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %135
  br label %170

170:                                              ; preds = %169, %158, %98
  %171 = load i8*, i8** %13, align 8
  %172 = call i32 @kfree(i8* %171)
  %173 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %10, align 8
  store %struct.ftrace_event_field* %173, %struct.ftrace_event_field** %5, align 8
  br label %174

174:                                              ; preds = %170, %23
  %175 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %5, align 8
  ret %struct.ftrace_event_field* %175
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.ftrace_event_field* @ERR_PTR(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local %struct.ftrace_event_field* @trace_find_event_field(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
