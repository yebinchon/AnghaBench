; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_s_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_s_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.trace_iterator = type { i32, i32, %struct.TYPE_2__*, i64, i64, i32* }
%struct.TYPE_2__ = type { i32 (%struct.seq_file*)*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"# tracer: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @s_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trace_iterator*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.trace_iterator*
  store %struct.trace_iterator* %8, %struct.trace_iterator** %5, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %68

13:                                               ; preds = %2
  %14 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 @seq_puts(%struct.seq_file* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = call i32 @test_ftrace_alive(%struct.seq_file* %28)
  br label %30

30:                                               ; preds = %18, %13
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %37 = call i64 @trace_empty(%struct.trace_iterator* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %42 = call i32 @print_snapshot_help(%struct.seq_file* %40, %struct.trace_iterator* %41)
  br label %67

43:                                               ; preds = %35, %30
  %44 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %45 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %50 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.seq_file*)*, i32 (%struct.seq_file*)** %52, align 8
  %54 = icmp ne i32 (%struct.seq_file*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %57 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.seq_file*)*, i32 (%struct.seq_file*)** %59, align 8
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = call i32 %60(%struct.seq_file* %61)
  br label %66

63:                                               ; preds = %48, %43
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = call i32 @trace_default_header(%struct.seq_file* %64)
  br label %66

66:                                               ; preds = %63, %55
  br label %67

67:                                               ; preds = %66, %39
  br label %92

68:                                               ; preds = %2
  %69 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %70 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %76 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %75, i32 0, i32 1
  %77 = call i32 @trace_print_seq(%struct.seq_file* %74, i32* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %80 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %91

81:                                               ; preds = %68
  %82 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %83 = call i32 @print_trace_line(%struct.trace_iterator* %82)
  %84 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %85 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %86 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %85, i32 0, i32 1
  %87 = call i32 @trace_print_seq(%struct.seq_file* %84, i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %90 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %81, %73
  br label %92

92:                                               ; preds = %91, %67
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @test_ftrace_alive(%struct.seq_file*) #1

declare dso_local i64 @trace_empty(%struct.trace_iterator*) #1

declare dso_local i32 @print_snapshot_help(%struct.seq_file*, %struct.trace_iterator*) #1

declare dso_local i32 @trace_default_header(%struct.seq_file*) #1

declare dso_local i32 @trace_print_seq(%struct.seq_file*, i32*) #1

declare dso_local i32 @print_trace_line(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
