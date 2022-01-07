; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_tracing_data_get.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_tracing_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_data = type { i32, i64, i32 }
%struct.list_head = type { i32 }
%struct.tracepoint_path = type { i32 }

@output_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"/tmp/perf-XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't make temp file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Can't read '%s'\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tracing_data* @tracing_data_get(%struct.list_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tracing_data*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracepoint_path*, align 8
  %9 = alloca %struct.tracing_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* @output_fd, align 4
  %13 = load %struct.list_head*, %struct.list_head** %5, align 8
  %14 = call %struct.tracepoint_path* @get_tracepoints_path(%struct.list_head* %13)
  store %struct.tracepoint_path* %14, %struct.tracepoint_path** %8, align 8
  %15 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %16 = icmp ne %struct.tracepoint_path* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.tracing_data* null, %struct.tracing_data** %4, align 8
  br label %117

18:                                               ; preds = %3
  %19 = call %struct.tracing_data* @malloc(i32 24)
  store %struct.tracing_data* %19, %struct.tracing_data** %9, align 8
  %20 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %21 = icmp ne %struct.tracing_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store %struct.tracing_data* null, %struct.tracing_data** %4, align 8
  br label %117

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %26 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %28 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %23
  %32 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %33 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snprintf(i32 %34, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %37 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mkstemp(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %44 = call i32 @free(%struct.tracing_data* %43)
  store %struct.tracing_data* null, %struct.tracing_data** %4, align 8
  br label %117

45:                                               ; preds = %31
  %46 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %47 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @O_RDWR, align 4
  %50 = call i32 @open(i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %55 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %59 = call i32 @free(%struct.tracing_data* %58)
  store %struct.tracing_data* null, %struct.tracing_data** %4, align 8
  br label %117

60:                                               ; preds = %45
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* @output_fd, align 4
  br label %62

62:                                               ; preds = %60, %23
  %63 = call i32 (...) @tracing_data_header()
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %96

67:                                               ; preds = %62
  %68 = call i32 (...) @record_header_files()
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %96

72:                                               ; preds = %67
  %73 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %74 = call i32 @record_ftrace_files(%struct.tracepoint_path* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %96

78:                                               ; preds = %72
  %79 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %80 = call i32 @record_event_files(%struct.tracepoint_path* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %96

84:                                               ; preds = %78
  %85 = call i32 (...) @record_proc_kallsyms()
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %96

89:                                               ; preds = %84
  %90 = call i32 (...) @record_ftrace_printk()
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %96

94:                                               ; preds = %89
  %95 = call i32 (...) @record_saved_cmdline()
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %94, %93, %88, %83, %77, %71, %66
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* @output_fd, align 4
  %101 = load i32, i32* @SEEK_CUR, align 4
  %102 = call i64 @lseek(i32 %100, i32 0, i32 %101)
  %103 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  %104 = getelementptr inbounds %struct.tracing_data, %struct.tracing_data* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @output_fd, align 4
  %106 = call i32 @close(i32 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* @output_fd, align 4
  br label %108

108:                                              ; preds = %99, %96
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @zfree(%struct.tracing_data** %9)
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.tracepoint_path*, %struct.tracepoint_path** %8, align 8
  %115 = call i32 @put_tracepoints_path(%struct.tracepoint_path* %114)
  %116 = load %struct.tracing_data*, %struct.tracing_data** %9, align 8
  store %struct.tracing_data* %116, %struct.tracing_data** %4, align 8
  br label %117

117:                                              ; preds = %113, %53, %41, %22, %17
  %118 = load %struct.tracing_data*, %struct.tracing_data** %4, align 8
  ret %struct.tracing_data* %118
}

declare dso_local %struct.tracepoint_path* @get_tracepoints_path(%struct.list_head*) #1

declare dso_local %struct.tracing_data* @malloc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @mkstemp(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @free(%struct.tracing_data*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @tracing_data_header(...) #1

declare dso_local i32 @record_header_files(...) #1

declare dso_local i32 @record_ftrace_files(%struct.tracepoint_path*) #1

declare dso_local i32 @record_event_files(%struct.tracepoint_path*) #1

declare dso_local i32 @record_proc_kallsyms(...) #1

declare dso_local i32 @record_ftrace_printk(...) #1

declare dso_local i32 @record_saved_cmdline(...) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @zfree(%struct.tracing_data**) #1

declare dso_local i32 @put_tracepoints_path(%struct.tracepoint_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
