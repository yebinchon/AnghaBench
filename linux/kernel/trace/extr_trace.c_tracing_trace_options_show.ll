; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_trace_options_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_trace_options_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.trace_array* }
%struct.trace_array = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.tracer_opt* }
%struct.tracer_opt = type { i32, i64 }

@trace_types_lock = common dso_local global i32 0, align 4
@trace_options = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"no%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tracing_trace_options_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_trace_options_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tracer_opt*, align 8
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %6, align 8
  %12 = call i32 @mutex_lock(i32* @trace_types_lock)
  %13 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %21 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load %struct.tracer_opt*, %struct.tracer_opt** %25, align 8
  store %struct.tracer_opt* %26, %struct.tracer_opt** %5, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %59, %2
  %28 = load i64*, i64** @trace_options, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %27
  %35 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %36 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load i64*, i64** @trace_options, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load i64*, i64** @trace_options, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %50, %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %27

62:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %100, %62
  %64 = load %struct.tracer_opt*, %struct.tracer_opt** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %64, i64 %66
  %68 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %63
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.tracer_opt*, %struct.tracer_opt** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %73, i64 %75
  %77 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %72, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.tracer_opt*, %struct.tracer_opt** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %83, i64 %85
  %87 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %88)
  br label %99

90:                                               ; preds = %71
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = load %struct.tracer_opt*, %struct.tracer_opt** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %92, i64 %94
  %96 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %90, %81
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %63

103:                                              ; preds = %63
  %104 = call i32 @mutex_unlock(i32* @trace_types_lock)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
