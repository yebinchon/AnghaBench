; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stack.c_t_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stack.c_t_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [83 x i8] c"        Depth    Size   Location    (%d entries)\0A        -----    ----   --------\0A\00", align 1
@stack_trace_nr_entries = common dso_local global i64 0, align 8
@stack_tracer_enabled = common dso_local global i32 0, align 4
@stack_trace_max_size = common dso_local global i32 0, align 4
@stack_trace_index = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%3ld) %8d   %5d   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @t_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load i64, i64* @stack_trace_nr_entries, align 8
  %14 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32, i32* @stack_tracer_enabled, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @stack_trace_max_size, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = call i32 @print_disabled(%struct.seq_file* %21)
  br label %23

23:                                               ; preds = %20, %17, %11
  store i32 0, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @stack_trace_nr_entries, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %65

32:                                               ; preds = %24
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  %35 = load i64, i64* @stack_trace_nr_entries, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32*, i32** @stack_trace_index, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %53

42:                                               ; preds = %32
  %43 = load i32*, i32** @stack_trace_index, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @stack_trace_index, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add nsw i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %46, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %42, %37
  %54 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i32*, i32** @stack_trace_index, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %59, i32 %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @trace_lookup_stack(%struct.seq_file* %62, i64 %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %53, %31, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @print_disabled(%struct.seq_file*) #1

declare dso_local i32 @trace_lookup_stack(%struct.seq_file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
