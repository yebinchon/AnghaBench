; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_clock_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_clock_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.seq_file = type { %struct.trace_array* }
%struct.trace_array = type { i32 }

@trace_clocks = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tracing_clock_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_clock_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  store %struct.trace_array* %9, %struct.trace_array** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trace_clocks, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %23 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @trace_clocks, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %36 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %27, i32 %33, i8* %40)
  br label %42

42:                                               ; preds = %15
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %10

45:                                               ; preds = %10
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 @seq_putc(%struct.seq_file* %46, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
