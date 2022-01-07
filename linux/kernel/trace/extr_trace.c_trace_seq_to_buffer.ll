; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_seq_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_seq_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.trace_seq*, i8*, i64)* @trace_seq_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trace_seq_to_buffer(%struct.trace_seq* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %10 = call i64 @trace_seq_used(%struct.trace_seq* %9)
  %11 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %12 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %10, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @EBUSY, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %21 = call i64 @trace_seq_used(%struct.trace_seq* %20)
  %22 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %23 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %21, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %32, %19
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %38 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %41 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @memcpy(i8* %36, i64 %44, i64 %45)
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %49 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %47
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %35, %16
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local i64 @trace_seq_used(%struct.trace_seq*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
