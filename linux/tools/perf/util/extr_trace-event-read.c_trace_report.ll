; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_trace_report.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-read.c_trace_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event = type { %struct.tep_handle* }
%struct.tep_handle = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@__const.trace_report.test = private unnamed_addr constant [3 x i8] c"\17\08D", align 1
@repipe = common dso_local global i32 0, align 4
@input_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no trace data in the file\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"not a trace file (missing 'tracing' tag)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"version = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"trace_event__init failed\00", align 1
@TEP_NSEC_OUTPUT = common dso_local global i32 0, align 4
@trace_data_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_report(i32 %0, %struct.trace_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tep_handle*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.trace_event* %1, %struct.trace_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @BUFSIZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.trace_report.test, i32 0, i32 0), i64 3, i1 false)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store %struct.tep_handle* null, %struct.tep_handle** %20, align 8
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* @repipe, align 4
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* @input_fd, align 4
  %30 = call i64 @do_read(i8* %26, i32 3)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %172

33:                                               ; preds = %3
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %35 = call i64 @memcmp(i8* %26, i8* %34, i32 3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %172

39:                                               ; preds = %33
  %40 = call i64 @do_read(i8* %26, i32 7)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %172

43:                                               ; preds = %39
  %44 = call i64 @memcmp(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %172

48:                                               ; preds = %43
  %49 = call i8* (...) @read_string()
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %172

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = call i64 @do_read(i8* %26, i32 1)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @free(i8* %63)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %172

65:                                               ; preds = %59
  %66 = getelementptr inbounds i8, i8* %26, i64 0
  %67 = load i8, i8* %66, align 16
  %68 = sext i8 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = call i32 (...) @bigendian()
  store i32 %69, i32* %17, align 4
  %70 = load %struct.trace_event*, %struct.trace_event** %6, align 8
  %71 = call i64 @trace_event__init(%struct.trace_event* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %162

75:                                               ; preds = %65
  %76 = load %struct.trace_event*, %struct.trace_event** %6, align 8
  %77 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %76, i32 0, i32 0
  %78 = load %struct.tep_handle*, %struct.tep_handle** %77, align 8
  store %struct.tep_handle* %78, %struct.tep_handle** %20, align 8
  %79 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %80 = load i32, i32* @TEP_NSEC_OUTPUT, align 4
  %81 = call i32 @tep_set_flag(%struct.tep_handle* %79, i32 %80)
  %82 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @tep_set_file_bigendian(%struct.tep_handle* %82, i32 %83)
  %85 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @tep_set_local_bigendian(%struct.tep_handle* %85, i32 %86)
  %88 = call i64 @do_read(i8* %26, i32 1)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  br label %162

91:                                               ; preds = %75
  %92 = getelementptr inbounds i8, i8* %26, i64 0
  %93 = load i8, i8* %92, align 16
  %94 = sext i8 %93 to i32
  store i32 %94, i32* %18, align 4
  %95 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %96 = call i32 @read4(%struct.tep_handle* %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %162

100:                                              ; preds = %91
  %101 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @tep_set_long_size(%struct.tep_handle* %101, i32 %102)
  %104 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @tep_set_page_size(%struct.tep_handle* %104, i32 %105)
  %107 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %108 = call i32 @read_header_files(%struct.tep_handle* %107)
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %162

112:                                              ; preds = %100
  %113 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %114 = call i32 @read_ftrace_files(%struct.tep_handle* %113)
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %162

118:                                              ; preds = %112
  %119 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %120 = call i32 @read_event_files(%struct.tep_handle* %119)
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %162

124:                                              ; preds = %118
  %125 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %126 = call i32 @read_proc_kallsyms(%struct.tep_handle* %125)
  store i32 %126, i32* %21, align 4
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %162

130:                                              ; preds = %124
  %131 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %132 = call i32 @read_ftrace_printk(%struct.tep_handle* %131)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %162

136:                                              ; preds = %130
  %137 = load i8*, i8** %11, align 8
  %138 = call double @atof(i8* %137)
  %139 = fcmp oge double %138, 6.000000e-01
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %142 = call i32 @read_saved_cmdline(%struct.tep_handle* %141)
  store i32 %142, i32* %21, align 4
  %143 = load i32, i32* %21, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %162

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %136
  %148 = load i32, i32* @trace_data_size, align 4
  store i32 %148, i32* %15, align 4
  store i32 0, i32* @repipe, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %153 = call i32 @tep_print_funcs(%struct.tep_handle* %152)
  br label %161

154:                                              ; preds = %147
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %159 = call i32 @tep_print_printk(%struct.tep_handle* %158)
  br label %160

160:                                              ; preds = %157, %154
  br label %161

161:                                              ; preds = %160, %151
  store %struct.tep_handle* null, %struct.tep_handle** %20, align 8
  br label %162

162:                                              ; preds = %161, %145, %135, %129, %123, %117, %111, %99, %90, %73
  %163 = load %struct.tep_handle*, %struct.tep_handle** %20, align 8
  %164 = icmp ne %struct.tep_handle* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.trace_event*, %struct.trace_event** %6, align 8
  %167 = call i32 @trace_event__cleanup(%struct.trace_event* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %172

172:                                              ; preds = %168, %62, %52, %46, %42, %37, %32
  %173 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @do_read(i8*, i32) #3

declare dso_local i64 @memcmp(i8*, i8*, i32) #3

declare dso_local i32 @pr_debug(i8*) #3

declare dso_local i8* @read_string(...) #3

declare dso_local i32 @printf(i8*, i8*) #3

declare dso_local i32 @free(i8*) #3

declare dso_local i32 @bigendian(...) #3

declare dso_local i64 @trace_event__init(%struct.trace_event*) #3

declare dso_local i32 @tep_set_flag(%struct.tep_handle*, i32) #3

declare dso_local i32 @tep_set_file_bigendian(%struct.tep_handle*, i32) #3

declare dso_local i32 @tep_set_local_bigendian(%struct.tep_handle*, i32) #3

declare dso_local i32 @read4(%struct.tep_handle*) #3

declare dso_local i32 @tep_set_long_size(%struct.tep_handle*, i32) #3

declare dso_local i32 @tep_set_page_size(%struct.tep_handle*, i32) #3

declare dso_local i32 @read_header_files(%struct.tep_handle*) #3

declare dso_local i32 @read_ftrace_files(%struct.tep_handle*) #3

declare dso_local i32 @read_event_files(%struct.tep_handle*) #3

declare dso_local i32 @read_proc_kallsyms(%struct.tep_handle*) #3

declare dso_local i32 @read_ftrace_printk(%struct.tep_handle*) #3

declare dso_local double @atof(i8*) #3

declare dso_local i32 @read_saved_cmdline(%struct.tep_handle*) #3

declare dso_local i32 @tep_print_funcs(%struct.tep_handle*) #3

declare dso_local i32 @tep_print_printk(%struct.tep_handle*) #3

declare dso_local i32 @trace_event__cleanup(%struct.trace_event*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
