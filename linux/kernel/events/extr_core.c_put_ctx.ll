; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_put_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_put_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { i64, i32, %struct.perf_event_context*, i32 }

@TASK_TOMBSTONE = common dso_local global i64 0, align 8
@free_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*)* @put_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_ctx(%struct.perf_event_context* %0) #0 {
  %2 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %2, align 8
  %3 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %3, i32 0, i32 3
  %5 = call i64 @refcount_dec_and_test(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %8, i32 0, i32 2
  %10 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  %11 = icmp ne %struct.perf_event_context* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %13, i32 0, i32 2
  %15 = load %struct.perf_event_context*, %struct.perf_event_context** %14, align 8
  call void @put_ctx(%struct.perf_event_context* %15)
  br label %16

16:                                               ; preds = %12, %7
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %18 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %23 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TASK_TOMBSTONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %29 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @put_task_struct(i64 %30)
  br label %32

32:                                               ; preds = %27, %21, %16
  %33 = load %struct.perf_event_context*, %struct.perf_event_context** %2, align 8
  %34 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %33, i32 0, i32 1
  %35 = load i32, i32* @free_ctx, align 4
  %36 = call i32 @call_rcu(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @put_task_struct(i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
