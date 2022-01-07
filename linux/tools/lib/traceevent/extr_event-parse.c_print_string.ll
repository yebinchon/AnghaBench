; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }
%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i8* }
%struct.print_event_type = type { i8* }

@TEP_PRINT_LATENCY = common dso_local global i32 0, align 4
@TEP_PRINT_COMM = common dso_local global i32 0, align 4
@TEP_PRINT_INFO_RAW = common dso_local global i32 0, align 4
@TEP_PRINT_INFO = common dso_local global i32 0, align 4
@TEP_PRINT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[UNKNOWN TEP TYPE %s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_handle*, %struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*, %struct.print_event_type*)* @print_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_string(%struct.tep_handle* %0, %struct.trace_seq* %1, %struct.tep_record* %2, %struct.tep_event* %3, i8* %4, %struct.print_event_type* %5) #0 {
  %7 = alloca %struct.tep_handle*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca %struct.tep_record*, align 8
  %10 = alloca %struct.tep_event*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.print_event_type*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %7, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %8, align 8
  store %struct.tep_record* %2, %struct.tep_record** %9, align 8
  store %struct.tep_event* %3, %struct.tep_event** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.print_event_type* %5, %struct.print_event_type** %12, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = load i32, i32* @TEP_PRINT_LATENCY, align 4
  %17 = load i32, i32* @TEP_PRINT_LATENCY, align 4
  %18 = call i32 @strlen(i32 %17)
  %19 = call i64 @strncmp(i8* %15, i32 %16, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.tep_handle*, %struct.tep_handle** %7, align 8
  %23 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %24 = load %struct.print_event_type*, %struct.print_event_type** %12, align 8
  %25 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.tep_record*, %struct.tep_record** %9, align 8
  %28 = call i32 @data_latency_format(%struct.tep_handle* %22, %struct.trace_seq* %23, i8* %26, %struct.tep_record* %27)
  br label %105

29:                                               ; preds = %6
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* @TEP_PRINT_COMM, align 4
  %32 = load i32, i32* @TEP_PRINT_COMM, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = call i64 @strncmp(i8* %30, i32 %31, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load %struct.tep_handle*, %struct.tep_handle** %7, align 8
  %38 = load %struct.tep_record*, %struct.tep_record** %9, align 8
  %39 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @parse_common_pid(%struct.tep_handle* %37, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.tep_handle*, %struct.tep_handle** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i8* @find_cmdline(%struct.tep_handle* %42, i32 %43)
  store i8* %44, i8** %13, align 8
  %45 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %46 = load %struct.print_event_type*, %struct.print_event_type** %12, align 8
  %47 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @trace_seq_printf(%struct.trace_seq* %45, i8* %48, i8* %49)
  br label %104

51:                                               ; preds = %29
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* @TEP_PRINT_INFO_RAW, align 4
  %54 = load i32, i32* @TEP_PRINT_INFO_RAW, align 4
  %55 = call i32 @strlen(i32 %54)
  %56 = call i64 @strncmp(i8* %52, i32 %53, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %60 = load %struct.print_event_type*, %struct.print_event_type** %12, align 8
  %61 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %64 = load %struct.tep_record*, %struct.tep_record** %9, align 8
  %65 = call i32 @print_event_info(%struct.trace_seq* %59, i8* %62, i32 1, %struct.tep_event* %63, %struct.tep_record* %64)
  br label %103

66:                                               ; preds = %51
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @TEP_PRINT_INFO, align 4
  %69 = load i32, i32* @TEP_PRINT_INFO, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = call i64 @strncmp(i8* %67, i32 %68, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %75 = load %struct.print_event_type*, %struct.print_event_type** %12, align 8
  %76 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %79 = load %struct.tep_record*, %struct.tep_record** %9, align 8
  %80 = call i32 @print_event_info(%struct.trace_seq* %74, i8* %77, i32 0, %struct.tep_event* %78, %struct.tep_record* %79)
  br label %102

81:                                               ; preds = %66
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @TEP_PRINT_NAME, align 4
  %84 = load i32, i32* @TEP_PRINT_NAME, align 4
  %85 = call i32 @strlen(i32 %84)
  %86 = call i64 @strncmp(i8* %82, i32 %83, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %90 = load %struct.print_event_type*, %struct.print_event_type** %12, align 8
  %91 = getelementptr inbounds %struct.print_event_type, %struct.print_event_type* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %94 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @trace_seq_printf(%struct.trace_seq* %89, i8* %92, i8* %95)
  br label %101

97:                                               ; preds = %81
  %98 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @trace_seq_printf(%struct.trace_seq* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %88
  br label %102

102:                                              ; preds = %101, %73
  br label %103

103:                                              ; preds = %102, %58
  br label %104

104:                                              ; preds = %103, %36
  br label %105

105:                                              ; preds = %104, %21
  ret void
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @data_latency_format(%struct.tep_handle*, %struct.trace_seq*, i8*, %struct.tep_record*) #1

declare dso_local i32 @parse_common_pid(%struct.tep_handle*, i32) #1

declare dso_local i8* @find_cmdline(%struct.tep_handle*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*) #1

declare dso_local i32 @print_event_info(%struct.trace_seq*, i8*, i32, %struct.tep_event*, %struct.tep_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
