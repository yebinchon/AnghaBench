; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_heap__pop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_heap__pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_heap = type { i32, %struct.auxtrace_heap_item* }
%struct.auxtrace_heap_item = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auxtrace_heap__pop(%struct.auxtrace_heap* %0) #0 {
  %2 = alloca %struct.auxtrace_heap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.auxtrace_heap_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.auxtrace_heap* %0, %struct.auxtrace_heap** %2, align 8
  %9 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %2, align 8
  %10 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %105

15:                                               ; preds = %1
  %16 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %2, align 8
  %17 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.auxtrace_heap*, %struct.auxtrace_heap** %2, align 8
  %21 = getelementptr inbounds %struct.auxtrace_heap, %struct.auxtrace_heap* %20, i32 0, i32 1
  %22 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %21, align 8
  store %struct.auxtrace_heap_item* %22, %struct.auxtrace_heap_item** %6, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %86
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 1
  %26 = add i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %87

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp uge i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %38, i64 %40
  %42 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %42, i64 %44
  %46 = bitcast %struct.auxtrace_heap_item* %41 to i8*
  %47 = bitcast %struct.auxtrace_heap_item* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  br label %105

48:                                               ; preds = %31
  %49 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %49, i64 %51
  %53 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %55, i64 %57
  %59 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %54, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %48
  %63 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %63, i64 %65
  %67 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %67, i64 %69
  %71 = bitcast %struct.auxtrace_heap_item* %66 to i8*
  %72 = bitcast %struct.auxtrace_heap_item* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 16, i1 false)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %86

74:                                               ; preds = %48
  %75 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %76 = load i32, i32* %3, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %75, i64 %77
  %79 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %79, i64 %81
  %83 = bitcast %struct.auxtrace_heap_item* %78 to i8*
  %84 = bitcast %struct.auxtrace_heap_item* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %74, %62
  br label %23

87:                                               ; preds = %30
  %88 = load i32, i32* %5, align 4
  %89 = sub i32 %88, 1
  store i32 %89, i32* %4, align 4
  %90 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %92, i64 %94
  %96 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.auxtrace_heap_item*, %struct.auxtrace_heap_item** %6, align 8
  %99 = load i32, i32* %4, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %98, i64 %100
  %102 = getelementptr inbounds %struct.auxtrace_heap_item, %struct.auxtrace_heap_item* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @auxtrace_heapify(%struct.auxtrace_heap_item* %90, i32 %91, i32 %97, i64 %103)
  br label %105

105:                                              ; preds = %87, %37, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @auxtrace_heapify(%struct.auxtrace_heap_item*, i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
