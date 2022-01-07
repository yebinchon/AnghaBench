; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_seq.c_trace_seq_path.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_seq.c_trace_seq_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.path = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_seq_path(%struct.trace_seq* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %7 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %8 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %12 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %18 = call i32 @__trace_seq_init(%struct.trace_seq* %17)
  %19 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %20 = call i32 @TRACE_SEQ_BUF_LEFT(%struct.trace_seq* %19)
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %24 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %27 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %26, i32 0, i32 1
  %28 = load %struct.path*, %struct.path** %5, align 8
  %29 = call i32 @seq_buf_path(%struct.TYPE_3__* %27, %struct.path* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %31 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %30, i32 0, i32 1
  %32 = call i32 @seq_buf_has_overflowed(%struct.TYPE_3__* %31)
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %38 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %41 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %35, %22, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @__trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @TRACE_SEQ_BUF_LEFT(%struct.trace_seq*) #1

declare dso_local i32 @seq_buf_path(%struct.TYPE_3__*, %struct.path*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @seq_buf_has_overflowed(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
