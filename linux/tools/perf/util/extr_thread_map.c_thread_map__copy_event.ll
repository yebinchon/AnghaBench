; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__copy_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread_map.c_thread_map__copy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread_map = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.perf_record_thread_map = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_thread_map*, %struct.perf_record_thread_map*)* @thread_map__copy_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_map__copy_event(%struct.perf_thread_map* %0, %struct.perf_record_thread_map* %1) #0 {
  %3 = alloca %struct.perf_thread_map*, align 8
  %4 = alloca %struct.perf_record_thread_map*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_thread_map* %0, %struct.perf_thread_map** %3, align 8
  store %struct.perf_record_thread_map* %1, %struct.perf_record_thread_map** %4, align 8
  %6 = load %struct.perf_record_thread_map*, %struct.perf_record_thread_map** %4, align 8
  %7 = getelementptr inbounds %struct.perf_record_thread_map, %struct.perf_record_thread_map* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %10 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.perf_record_thread_map*, %struct.perf_record_thread_map** %4, align 8
  %14 = getelementptr inbounds %struct.perf_record_thread_map, %struct.perf_record_thread_map* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.perf_record_thread_map*, %struct.perf_record_thread_map** %4, align 8
  %21 = getelementptr inbounds %struct.perf_record_thread_map, %struct.perf_record_thread_map* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @perf_thread_map__set_pid(%struct.perf_thread_map* %18, i32 %19, i32 %28)
  %30 = load %struct.perf_record_thread_map*, %struct.perf_record_thread_map** %4, align 8
  %31 = getelementptr inbounds %struct.perf_record_thread_map, %struct.perf_record_thread_map* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @strndup(i32 %37, i32 16)
  %39 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %40 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %17
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load %struct.perf_thread_map*, %struct.perf_thread_map** %3, align 8
  %51 = getelementptr inbounds %struct.perf_thread_map, %struct.perf_thread_map* %50, i32 0, i32 1
  %52 = call i32 @refcount_set(i32* %51, i32 1)
  ret void
}

declare dso_local i32 @perf_thread_map__set_pid(%struct.perf_thread_map*, i32, i32) #1

declare dso_local i32 @strndup(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
