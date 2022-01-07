; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_inherit_task_group.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_inherit_task_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event_context = type { i32 }
%struct.task_struct = type { %struct.perf_event_context** }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.task_struct*, %struct.perf_event_context*, %struct.task_struct*, i32, i32*)* @inherit_task_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inherit_task_group(%struct.perf_event* %0, %struct.task_struct* %1, %struct.perf_event_context* %2, %struct.task_struct* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.perf_event_context*, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.perf_event_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %8, align 8
  store %struct.task_struct* %1, %struct.task_struct** %9, align 8
  store %struct.perf_event_context* %2, %struct.perf_event_context** %10, align 8
  store %struct.task_struct* %3, %struct.task_struct** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %13, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %7, align 4
  br label %65

23:                                               ; preds = %6
  %24 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load %struct.perf_event_context**, %struct.perf_event_context*** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %26, i64 %28
  %30 = load %struct.perf_event_context*, %struct.perf_event_context** %29, align 8
  store %struct.perf_event_context* %30, %struct.perf_event_context** %15, align 8
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %15, align 8
  %32 = icmp ne %struct.perf_event_context* %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %23
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %35 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %38 = call %struct.perf_event_context* @alloc_perf_context(i32 %36, %struct.task_struct* %37)
  store %struct.perf_event_context* %38, %struct.perf_event_context** %15, align 8
  %39 = load %struct.perf_event_context*, %struct.perf_event_context** %15, align 8
  %40 = icmp ne %struct.perf_event_context* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %65

44:                                               ; preds = %33
  %45 = load %struct.perf_event_context*, %struct.perf_event_context** %15, align 8
  %46 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 0
  %48 = load %struct.perf_event_context**, %struct.perf_event_context*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.perf_event_context*, %struct.perf_event_context** %48, i64 %50
  store %struct.perf_event_context* %45, %struct.perf_event_context** %51, align 8
  br label %52

52:                                               ; preds = %44, %23
  %53 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %57 = load %struct.perf_event_context*, %struct.perf_event_context** %15, align 8
  %58 = call i32 @inherit_group(%struct.perf_event* %53, %struct.task_struct* %54, %struct.perf_event_context* %55, %struct.task_struct* %56, %struct.perf_event_context* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32*, i32** %13, align 8
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %52
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %41, %21
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.perf_event_context* @alloc_perf_context(i32, %struct.task_struct*) #1

declare dso_local i32 @inherit_group(%struct.perf_event*, %struct.task_struct*, %struct.perf_event_context*, %struct.task_struct*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
