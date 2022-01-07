; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_err_log_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_err_log_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.tracing_log_err = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8**, i64, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"[%5llu.%06u] %s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tracing_err_log_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_err_log_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tracing_log_err*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tracing_log_err*
  store %struct.tracing_log_err* %10, %struct.tracing_log_err** %5, align 8
  %11 = load %struct.tracing_log_err*, %struct.tracing_log_err** %5, align 8
  %12 = icmp ne %struct.tracing_log_err* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %2
  %14 = load %struct.tracing_log_err*, %struct.tracing_log_err** %5, align 8
  %15 = getelementptr inbounds %struct.tracing_log_err, %struct.tracing_log_err* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load %struct.tracing_log_err*, %struct.tracing_log_err** %5, align 8
  %19 = getelementptr inbounds %struct.tracing_log_err, %struct.tracing_log_err* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8*, i8** %17, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load %struct.tracing_log_err*, %struct.tracing_log_err** %5, align 8
  %25 = getelementptr inbounds %struct.tracing_log_err, %struct.tracing_log_err* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NSEC_PER_SEC, align 4
  %30 = call i32 @do_div(i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 1000
  %35 = load %struct.tracing_log_err*, %struct.tracing_log_err** %5, align 8
  %36 = getelementptr inbounds %struct.tracing_log_err, %struct.tracing_log_err* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34, i32 %37, i8* %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.tracing_log_err*, %struct.tracing_log_err** %5, align 8
  %42 = getelementptr inbounds %struct.tracing_log_err, %struct.tracing_log_err* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load %struct.tracing_log_err*, %struct.tracing_log_err** %5, align 8
  %47 = getelementptr inbounds %struct.tracing_log_err, %struct.tracing_log_err* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @tracing_err_log_show_pos(%struct.seq_file* %45, i32 %49)
  br label %51

51:                                               ; preds = %13, %2
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @tracing_err_log_show_pos(%struct.seq_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
