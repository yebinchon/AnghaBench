; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evlist__delete(%struct.evlist* %0) #0 {
  %2 = alloca %struct.evlist*, align 8
  store %struct.evlist* %0, %struct.evlist** %2, align 8
  %3 = load %struct.evlist*, %struct.evlist** %2, align 8
  %4 = icmp eq %struct.evlist* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.evlist*, %struct.evlist** %2, align 8
  %8 = call i32 @evlist__munmap(%struct.evlist* %7)
  %9 = load %struct.evlist*, %struct.evlist** %2, align 8
  %10 = call i32 @evlist__close(%struct.evlist* %9)
  %11 = load %struct.evlist*, %struct.evlist** %2, align 8
  %12 = getelementptr inbounds %struct.evlist, %struct.evlist* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @perf_cpu_map__put(i32* %14)
  %16 = load %struct.evlist*, %struct.evlist** %2, align 8
  %17 = getelementptr inbounds %struct.evlist, %struct.evlist* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @perf_thread_map__put(i32* %19)
  %21 = load %struct.evlist*, %struct.evlist** %2, align 8
  %22 = getelementptr inbounds %struct.evlist, %struct.evlist* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.evlist*, %struct.evlist** %2, align 8
  %25 = getelementptr inbounds %struct.evlist, %struct.evlist* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.evlist*, %struct.evlist** %2, align 8
  %28 = call i32 @evlist__purge(%struct.evlist* %27)
  %29 = load %struct.evlist*, %struct.evlist** %2, align 8
  %30 = call i32 @evlist__exit(%struct.evlist* %29)
  %31 = load %struct.evlist*, %struct.evlist** %2, align 8
  %32 = call i32 @free(%struct.evlist* %31)
  br label %33

33:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @evlist__munmap(%struct.evlist*) #1

declare dso_local i32 @evlist__close(%struct.evlist*) #1

declare dso_local i32 @perf_cpu_map__put(i32*) #1

declare dso_local i32 @perf_thread_map__put(i32*) #1

declare dso_local i32 @evlist__purge(%struct.evlist*) #1

declare dso_local i32 @evlist__exit(%struct.evlist*) #1

declare dso_local i32 @free(%struct.evlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
