; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_print_func_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_print_func_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_event = type { %struct.tep_handle* }
%struct.tep_handle = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_format_field = type { i32 }
%struct.func_map = type { i8*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"%s/0x%llx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%08llx\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"CAN'T FIND FIELD \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_print_func_field(%struct.trace_seq* %0, i8* %1, %struct.tep_event* %2, i8* %3, %struct.tep_record* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tep_event*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tep_record*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tep_format_field*, align 8
  %15 = alloca %struct.tep_handle*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.func_map*, align 8
  %18 = alloca [128 x i8], align 16
  store %struct.trace_seq* %0, %struct.trace_seq** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.tep_event* %2, %struct.tep_event** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.tep_record* %4, %struct.tep_record** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call %struct.tep_format_field* @tep_find_field(%struct.tep_event* %19, i8* %20)
  store %struct.tep_format_field* %21, %struct.tep_format_field** %14, align 8
  %22 = load %struct.tep_event*, %struct.tep_event** %10, align 8
  %23 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %22, i32 0, i32 0
  %24 = load %struct.tep_handle*, %struct.tep_handle** %23, align 8
  store %struct.tep_handle* %24, %struct.tep_handle** %15, align 8
  %25 = load %struct.tep_format_field*, %struct.tep_format_field** %14, align 8
  %26 = icmp ne %struct.tep_format_field* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  br label %62

28:                                               ; preds = %6
  %29 = load %struct.tep_format_field*, %struct.tep_format_field** %14, align 8
  %30 = load %struct.tep_record*, %struct.tep_record** %12, align 8
  %31 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @tep_read_number_field(%struct.tep_format_field* %29, i32 %32, i64* %16)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %62

36:                                               ; preds = %28
  %37 = load %struct.tep_handle*, %struct.tep_handle** %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = call %struct.func_map* @find_func(%struct.tep_handle* %37, i64 %38)
  store %struct.func_map* %39, %struct.func_map** %17, align 8
  %40 = load %struct.func_map*, %struct.func_map** %17, align 8
  %41 = icmp ne %struct.func_map* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %44 = load %struct.func_map*, %struct.func_map** %17, align 8
  %45 = getelementptr inbounds %struct.func_map, %struct.func_map* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.func_map*, %struct.func_map** %17, align 8
  %48 = getelementptr inbounds %struct.func_map, %struct.func_map* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @snprintf(i8* %43, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %46, i64 %51)
  br label %57

53:                                               ; preds = %36
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %53, %42
  %58 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %61 = call i32 @trace_seq_printf(%struct.trace_seq* %58, i8* %59, i8* %60)
  store i32 %61, i32* %7, align 4
  br label %70

62:                                               ; preds = %35, %27
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @trace_seq_printf(%struct.trace_seq* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %65, %62
  store i32 -1, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.tep_format_field* @tep_find_field(%struct.tep_event*, i8*) #1

declare dso_local i64 @tep_read_number_field(%struct.tep_format_field*, i32, i64*) #1

declare dso_local %struct.func_map* @find_func(%struct.tep_handle*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
