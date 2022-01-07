; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_expand_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_expand_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i64, i32 }

@TRACE_SEQ_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Can't allocate trace_seq buffer memory\00", align 1
@TRACE_SEQ__MEM_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*)* @expand_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_buffer(%struct.trace_seq* %0) #0 {
  %2 = alloca %struct.trace_seq*, align 8
  %3 = alloca i8*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %2, align 8
  %4 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %5 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %8 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TRACE_SEQ_BUF_SIZE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i8* @realloc(i8* %6, i64 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ONCE(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @TRACE_SEQ__MEM_ALLOC_FAILED, align 4
  %21 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %22 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  br label %32

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %26 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* @TRACE_SEQ_BUF_SIZE, align 8
  %28 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %29 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %23, %19
  ret void
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
