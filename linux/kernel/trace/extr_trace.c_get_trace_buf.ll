; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_get_trace_buf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_get_trace_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer_struct = type { i32, i8** }

@trace_percpu_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_trace_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_trace_buf() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.trace_buffer_struct*, align 8
  %3 = load i32, i32* @trace_percpu_buffer, align 4
  %4 = call %struct.trace_buffer_struct* @this_cpu_ptr(i32 %3)
  store %struct.trace_buffer_struct* %4, %struct.trace_buffer_struct** %2, align 8
  %5 = load %struct.trace_buffer_struct*, %struct.trace_buffer_struct** %2, align 8
  %6 = icmp ne %struct.trace_buffer_struct* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load %struct.trace_buffer_struct*, %struct.trace_buffer_struct** %2, align 8
  %9 = getelementptr inbounds %struct.trace_buffer_struct, %struct.trace_buffer_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %0
  store i8* null, i8** %1, align 8
  br label %29

13:                                               ; preds = %7
  %14 = load %struct.trace_buffer_struct*, %struct.trace_buffer_struct** %2, align 8
  %15 = getelementptr inbounds %struct.trace_buffer_struct, %struct.trace_buffer_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = call i32 (...) @barrier()
  %19 = load %struct.trace_buffer_struct*, %struct.trace_buffer_struct** %2, align 8
  %20 = getelementptr inbounds %struct.trace_buffer_struct, %struct.trace_buffer_struct* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load %struct.trace_buffer_struct*, %struct.trace_buffer_struct** %2, align 8
  %23 = getelementptr inbounds %struct.trace_buffer_struct, %struct.trace_buffer_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %21, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8* %28, i8** %1, align 8
  br label %29

29:                                               ; preds = %13, %12
  %30 = load i8*, i8** %1, align 8
  ret i8* %30
}

declare dso_local %struct.trace_buffer_struct* @this_cpu_ptr(i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
