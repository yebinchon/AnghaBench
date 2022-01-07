; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_trace_seq_do_fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_trace_seq_do_fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Usage of trace_seq after it was destroyed\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Can't allocate trace_seq buffer memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_seq_do_fprintf(%struct.trace_seq* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i32*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %7 = call i32 @TRACE_SEQ_CHECK(%struct.trace_seq* %6)
  %8 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %9 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %26 [
    i32 129, label %11
    i32 130, label %20
    i32 128, label %23
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %14 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %17 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %26

23:                                               ; preds = %2
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %2, %23, %20
  store i32 -1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @TRACE_SEQ_CHECK(%struct.trace_seq*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
