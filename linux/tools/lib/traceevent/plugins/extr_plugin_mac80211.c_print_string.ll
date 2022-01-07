; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_mac80211.c_print_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_mac80211.c_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_event = type { i32 }
%struct.tep_format_field = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"NOTFOUND:%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"__data_loc\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid_data_loc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, %struct.tep_event*, i8*, i8*)* @print_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_string(%struct.trace_seq* %0, %struct.tep_event* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.tep_event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tep_format_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store %struct.tep_event* %1, %struct.tep_event** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.tep_event*, %struct.tep_event** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.tep_format_field* @tep_find_field(%struct.tep_event* %13, i8* %14)
  store %struct.tep_format_field* %15, %struct.tep_format_field** %9, align 8
  %16 = load %struct.tep_format_field*, %struct.tep_format_field** %9, align 8
  %17 = icmp ne %struct.tep_format_field* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %57

22:                                               ; preds = %4
  %23 = load %struct.tep_format_field*, %struct.tep_format_field** %9, align 8
  %24 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.tep_format_field*, %struct.tep_format_field** %9, align 8
  %27 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.tep_format_field*, %struct.tep_format_field** %9, align 8
  %30 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strncmp(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %22
  %35 = load %struct.tep_format_field*, %struct.tep_format_field** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @tep_read_number_field(%struct.tep_format_field* %35, i8* %36, i64* %12)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %41 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %57

42:                                               ; preds = %34
  %43 = load i64, i64* %12, align 8
  %44 = and i64 %43, 65535
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i64, i64* %12, align 8
  %47 = lshr i64 %46, 16
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %42, %22
  %50 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %51, i8* %55)
  br label %57

57:                                               ; preds = %49, %39, %18
  ret void
}

declare dso_local %struct.tep_format_field* @tep_find_field(%struct.tep_event*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @tep_read_number_field(%struct.tep_format_field*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
