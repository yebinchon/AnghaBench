; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_heap__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_heap__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_heap = type { i32, i32, %struct.auxtrace_heap_item* }
%struct.auxtrace_heap_item = type { i32 }

@AUXTRACE_INIT_NR_QUEUES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auxtrace_heap__add(%struct.auxtrace_heap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auxtrace_heap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.auxtrace_heap_item*, align 8
  %9 = alloca i32, align 4
  store %struct.auxtrace_heap* %0, %struct.auxtrace_heap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %5, align 8
  %12 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %3
  %16 = load i32, i32* @AUXTRACE_INIT_NR_QUEUES, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %21, %15
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %17

24:                                               ; preds = %17
  %25 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %5, align 8
  %26 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %25, i32 0, i32 2
  %27 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call %struct.auxtrace_heap_item* @realloc(%struct.auxtrace_heap_item* %27, i32 %31)
  store %struct.auxtrace_heap_item* %32, %struct.auxtrace_heap_item** %8, align 8
  %33 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %8, align 8
  %34 = icmp ne %struct.auxtrace_heap_item* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %56

38:                                               ; preds = %24
  %39 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %8, align 8
  %40 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %5, align 8
  %41 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %40, i32 0, i32 2
  store %struct.auxtrace_heap_item* %39, %struct.auxtrace_heap_item** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %5, align 8
  %44 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %38, %3
  %46 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %5, align 8
  %47 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %46, i32 0, i32 2
  %48 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %47, align 8
  %49 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %5, align 8
  %50 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @auxtrace_heapify(%struct.auxtrace_heap_item* %48, i32 %51, i32 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %45, %35
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.auxtrace_heap_item* @realloc(%struct.auxtrace_heap_item*, i32) #1

declare dso_local i32 @auxtrace_heapify(%struct.auxtrace_heap_item*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
