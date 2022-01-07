; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_function.c_function_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_function.c_function_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { %struct.tep_handle* }
%struct.tep_handle = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"parent_ip\00", align 1
@ftrace_indent = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@ftrace_parent = common dso_local global %struct.TYPE_3__* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" <-- \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @function_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @function_handler(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tep_handle*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.tep_record* %1, %struct.tep_record** %7, align 8
  store %struct.tep_event* %2, %struct.tep_event** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %17 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %16, i32 0, i32 0
  %18 = load %struct.tep_handle*, %struct.tep_handle** %17, align 8
  store %struct.tep_handle* %18, %struct.tep_handle** %10, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %20 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %21 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %22 = call i64 @tep_get_field_val(%struct.trace_seq* %19, %struct.tep_event* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tep_record* %21, i64* %11, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %26 = call i32 @trace_seq_putc(%struct.trace_seq* %25, i8 signext 33)
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %4
  %28 = load %struct.tep_handle*, %struct.tep_handle** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i8* @tep_find_function(%struct.tep_handle* %28, i64 %29)
  store i8* %30, i8** %13, align 8
  %31 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %32 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %33 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %34 = call i64 @tep_get_field_val(%struct.trace_seq* %31, %struct.tep_event* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.tep_record* %33, i64* %12, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %38 = call i32 @trace_seq_putc(%struct.trace_seq* %37, i8 signext 33)
  store i32 %38, i32* %5, align 4
  br label %92

39:                                               ; preds = %27
  %40 = load %struct.tep_handle*, %struct.tep_handle** %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @tep_find_function(%struct.tep_handle* %40, i64 %41)
  store i8* %42, i8** %14, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ftrace_indent, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %54 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @add_and_get_index(i8* %51, i8* %52, i32 %55)
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %50, %45, %39
  %58 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 3
  %61 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %72

68:                                               ; preds = %57
  %69 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ftrace_parent, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %79 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  br label %90

86:                                               ; preds = %77
  %87 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %72
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %36, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @tep_get_field_val(%struct.trace_seq*, %struct.tep_event*, i8*, %struct.tep_record*, i64*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i8* @tep_find_function(%struct.tep_handle*, i64) #1

declare dso_local i32 @add_and_get_index(i8*, i8*, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
