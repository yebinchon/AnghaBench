; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_seq.c_trace_seq_putmem_hex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_seq.c_trace_seq_putmem_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_seq_putmem_hex(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %9 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %13 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %19 = call i32 @__trace_seq_init(%struct.trace_seq* %18)
  %20 = load i32, i32* %6, align 4
  %21 = mul i32 %20, 2
  %22 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %23 = call i32 @TRACE_SEQ_BUF_LEFT(%struct.trace_seq* %22)
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %27 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %46

28:                                               ; preds = %17
  %29 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %30 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %29, i32 0, i32 1
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @seq_buf_putmem_hex(%struct.TYPE_3__* %30, i8* %31, i32 %32)
  %34 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %35 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %34, i32 0, i32 1
  %36 = call i32 @seq_buf_has_overflowed(%struct.TYPE_3__* %35)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %42 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %45 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %16, %25, %39, %28
  ret void
}

declare dso_local i32 @__trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @TRACE_SEQ_BUF_LEFT(%struct.trace_seq*) #1

declare dso_local i32 @seq_buf_putmem_hex(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @seq_buf_has_overflowed(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
