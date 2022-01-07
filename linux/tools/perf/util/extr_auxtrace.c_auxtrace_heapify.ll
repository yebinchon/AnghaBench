; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_heapify.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_heapify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_heap_item = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auxtrace_heap_item*, i32, i32, i64)* @auxtrace_heapify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxtrace_heapify(%struct.auxtrace_heap_item* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.auxtrace_heap_item*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.auxtrace_heap_item* %0, %struct.auxtrace_heap_item** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  br label %10

10:                                               ; preds = %26, %4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 1
  %16 = lshr i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %17, i64 %19
  %21 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %38

26:                                               ; preds = %13
  %27 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %27, i64 %29
  %31 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %31, i64 %33
  %35 = bitcast %struct.auxtrace_heap_item* %30 to i8*
  %36 = bitcast %struct.auxtrace_heap_item* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %6, align 4
  br label %10

38:                                               ; preds = %25, %10
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %40, i64 %42
  %44 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %46, i64 %48
  %50 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
