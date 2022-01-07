; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_function.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_process_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { i32 }
%struct.tep_print_arg = type { i32 }
%struct.tep_function_handler = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"__print_flags\00", align 1
@is_flag_field = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"__print_symbolic\00", align 1
@is_symbolic_field = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"__print_hex\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"__print_hex_str\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"__print_array\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"__get_str\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"__get_bitmask\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"__get_dynamic_array\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"__get_dynamic_array_len\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"function %s not defined\00", align 1
@TEP_EVENT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*, %struct.tep_print_arg*, i8*, i8**)* @process_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_function(%struct.tep_event* %0, %struct.tep_print_arg* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca %struct.tep_print_arg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.tep_function_handler*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %6, align 8
  store %struct.tep_print_arg* %1, %struct.tep_print_arg** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @free_token(i8* %15)
  store i32 1, i32* @is_flag_field, align 4
  %17 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %18 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = call i32 @process_flags(%struct.tep_event* %17, %struct.tep_print_arg* %18, i8** %19)
  store i32 %20, i32* %5, align 4
  br label %132

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @free_token(i8* %26)
  store i32 1, i32* @is_symbolic_field, align 4
  %28 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %29 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = call i32 @process_symbols(%struct.tep_event* %28, %struct.tep_print_arg* %29, i8** %30)
  store i32 %31, i32* %5, align 4
  br label %132

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free_token(i8* %37)
  %39 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %40 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %41 = load i8**, i8*** %9, align 8
  %42 = call i32 @process_hex(%struct.tep_event* %39, %struct.tep_print_arg* %40, i8** %41)
  store i32 %42, i32* %5, align 4
  br label %132

43:                                               ; preds = %32
  %44 = load i8*, i8** %8, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free_token(i8* %48)
  %50 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %51 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %52 = load i8**, i8*** %9, align 8
  %53 = call i32 @process_hex_str(%struct.tep_event* %50, %struct.tep_print_arg* %51, i8** %52)
  store i32 %53, i32* %5, align 4
  br label %132

54:                                               ; preds = %43
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free_token(i8* %59)
  %61 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %62 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = call i32 @process_int_array(%struct.tep_event* %61, %struct.tep_print_arg* %62, i8** %63)
  store i32 %64, i32* %5, align 4
  br label %132

65:                                               ; preds = %54
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @free_token(i8* %70)
  %72 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %73 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %74 = load i8**, i8*** %9, align 8
  %75 = call i32 @process_str(%struct.tep_event* %72, %struct.tep_print_arg* %73, i8** %74)
  store i32 %75, i32* %5, align 4
  br label %132

76:                                               ; preds = %65
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @free_token(i8* %81)
  %83 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %84 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %85 = load i8**, i8*** %9, align 8
  %86 = call i32 @process_bitmask(%struct.tep_event* %83, %struct.tep_print_arg* %84, i8** %85)
  store i32 %86, i32* %5, align 4
  br label %132

87:                                               ; preds = %76
  %88 = load i8*, i8** %8, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @free_token(i8* %92)
  %94 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %95 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = call i32 @process_dynamic_array(%struct.tep_event* %94, %struct.tep_print_arg* %95, i8** %96)
  store i32 %97, i32* %5, align 4
  br label %132

98:                                               ; preds = %87
  %99 = load i8*, i8** %8, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @free_token(i8* %103)
  %105 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %106 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %107 = load i8**, i8*** %9, align 8
  %108 = call i32 @process_dynamic_array_len(%struct.tep_event* %105, %struct.tep_print_arg* %106, i8** %107)
  store i32 %108, i32* %5, align 4
  br label %132

109:                                              ; preds = %98
  %110 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %111 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = call %struct.tep_function_handler* @find_func_handler(i32 %112, i8* %113)
  store %struct.tep_function_handler* %114, %struct.tep_function_handler** %10, align 8
  %115 = load %struct.tep_function_handler*, %struct.tep_function_handler** %10, align 8
  %116 = icmp ne %struct.tep_function_handler* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @free_token(i8* %118)
  %120 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %121 = load %struct.tep_function_handler*, %struct.tep_function_handler** %10, align 8
  %122 = load %struct.tep_print_arg*, %struct.tep_print_arg** %7, align 8
  %123 = load i8**, i8*** %9, align 8
  %124 = call i32 @process_func_handler(%struct.tep_event* %120, %struct.tep_function_handler* %121, %struct.tep_print_arg* %122, i8** %123)
  store i32 %124, i32* %5, align 4
  br label %132

125:                                              ; preds = %109
  %126 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @do_warning_event(%struct.tep_event* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @free_token(i8* %129)
  %131 = load i32, i32* @TEP_EVENT_ERROR, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %125, %117, %102, %91, %80, %69, %58, %47, %36, %25, %14
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free_token(i8*) #1

declare dso_local i32 @process_flags(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_symbols(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_hex(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_hex_str(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_int_array(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_str(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_bitmask(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_dynamic_array(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @process_dynamic_array_len(%struct.tep_event*, %struct.tep_print_arg*, i8**) #1

declare dso_local %struct.tep_function_handler* @find_func_handler(i32, i8*) #1

declare dso_local i32 @process_func_handler(%struct.tep_event*, %struct.tep_function_handler*, %struct.tep_print_arg*, i8**) #1

declare dso_local i32 @do_warning_event(%struct.tep_event*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
