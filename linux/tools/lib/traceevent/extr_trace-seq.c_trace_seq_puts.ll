; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_trace_seq_puts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_trace_seq_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_seq_puts(%struct.trace_seq* %0, i8* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %7 = call i32 @TRACE_SEQ_CHECK_RET0(%struct.trace_seq* %6)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %13 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %17 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = icmp sgt i32 %11, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %23 = call i32 @expand_buffer(%struct.trace_seq* %22)
  br label %10

24:                                               ; preds = %10
  %25 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %26 = call i32 @TRACE_SEQ_CHECK_RET0(%struct.trace_seq* %25)
  %27 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %28 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %31 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %29, %33
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @memcpy(i64 %34, i8* %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %40 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @TRACE_SEQ_CHECK_RET0(%struct.trace_seq*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @expand_buffer(%struct.trace_seq*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
