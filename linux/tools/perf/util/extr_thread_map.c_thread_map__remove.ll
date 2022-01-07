; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__remove.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread_map = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_map__remove(%struct.perf_thread_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_thread_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_thread_map* %0, %struct.perf_thread_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %8 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %64

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %17 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %64

23:                                               ; preds = %14
  %24 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %25 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @zfree(i32* %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %56, %23
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %36 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %33
  %41 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %42 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %48 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = bitcast %struct.TYPE_2__* %46 to i8*
  %55 = bitcast %struct.TYPE_2__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load %struct.perf_thread_map*, %struct.perf_thread_map** %4, align 8
  %61 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %20, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @zfree(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
