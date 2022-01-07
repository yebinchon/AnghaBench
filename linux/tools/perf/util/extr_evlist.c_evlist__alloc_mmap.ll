; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__alloc_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__alloc_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.evlist = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmap* (%struct.evlist*, i32)* @evlist__alloc_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmap* @evlist__alloc_mmap(%struct.evlist* %0, i32 %1) #0 {
  %3 = alloca %struct.mmap*, align 8
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmap*, align 8
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.evlist*, %struct.evlist** %4, align 8
  %9 = getelementptr inbounds %struct.evlist, %struct.evlist* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @perf_cpu_map__nr(i32 %11)
  %13 = load %struct.evlist*, %struct.evlist** %4, align 8
  %14 = getelementptr inbounds %struct.evlist, %struct.evlist* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.evlist*, %struct.evlist** %4, align 8
  %17 = getelementptr inbounds %struct.evlist, %struct.evlist* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @perf_cpu_map__empty(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.evlist*, %struct.evlist** %4, align 8
  %24 = getelementptr inbounds %struct.evlist, %struct.evlist* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @perf_thread_map__nr(i32 %26)
  %28 = load %struct.evlist*, %struct.evlist** %4, align 8
  %29 = getelementptr inbounds %struct.evlist, %struct.evlist* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.evlist*, %struct.evlist** %4, align 8
  %33 = getelementptr inbounds %struct.evlist, %struct.evlist* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 12
  %38 = trunc i64 %37 to i32
  %39 = call %struct.mmap* @zalloc(i32 %38)
  store %struct.mmap* %39, %struct.mmap** %7, align 8
  %40 = load %struct.mmap*, %struct.mmap** %7, align 8
  %41 = icmp ne %struct.mmap* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store %struct.mmap* null, %struct.mmap** %3, align 8
  br label %77

43:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.evlist*, %struct.evlist** %4, align 8
  %47 = getelementptr inbounds %struct.evlist, %struct.evlist* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %44
  %52 = load %struct.mmap*, %struct.mmap** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mmap, %struct.mmap* %52, i64 %54
  %56 = getelementptr inbounds %struct.mmap, %struct.mmap* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mmap*, %struct.mmap** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mmap, %struct.mmap* %59, i64 %61
  %63 = getelementptr inbounds %struct.mmap, %struct.mmap* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %58, i32* %64, align 4
  %65 = load %struct.mmap*, %struct.mmap** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mmap, %struct.mmap* %65, i64 %67
  %69 = getelementptr inbounds %struct.mmap, %struct.mmap* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = call i32 @refcount_set(i32* %70, i32 0)
  br label %72

72:                                               ; preds = %51
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %44

75:                                               ; preds = %44
  %76 = load %struct.mmap*, %struct.mmap** %7, align 8
  store %struct.mmap* %76, %struct.mmap** %3, align 8
  br label %77

77:                                               ; preds = %75, %42
  %78 = load %struct.mmap*, %struct.mmap** %3, align 8
  ret %struct.mmap* %78
}

declare dso_local i32 @perf_cpu_map__nr(i32) #1

declare dso_local i64 @perf_cpu_map__empty(i32) #1

declare dso_local i32 @perf_thread_map__nr(i32) #1

declare dso_local %struct.mmap* @zalloc(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
