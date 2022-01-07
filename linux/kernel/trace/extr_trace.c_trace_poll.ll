; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_poll.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.TYPE_2__*, %struct.trace_array* }
%struct.TYPE_2__ = type { i32 }
%struct.trace_array = type { i32 }
%struct.file = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@TRACE_ITER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, %struct.file*, i32*)* @trace_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_poll(%struct.trace_iterator* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_iterator*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.trace_array*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 2
  %11 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  store %struct.trace_array* %11, %struct.trace_array** %8, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @trace_buffer_iter(%struct.trace_iterator* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @EPOLLIN, align 4
  %20 = load i32, i32* @EPOLLRDNORM, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  %24 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TRACE_ITER_BLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @EPOLLIN, align 4
  %31 = load i32, i32* @EPOLLRDNORM, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  br label %45

33:                                               ; preds = %22
  %34 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %35 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.trace_iterator*, %struct.trace_iterator** %5, align 8
  %40 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ring_buffer_poll_wait(i32 %38, i32 %41, %struct.file* %42, i32* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %33, %29, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @trace_buffer_iter(%struct.trace_iterator*, i32) #1

declare dso_local i32 @ring_buffer_poll_wait(i32, i32, %struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
