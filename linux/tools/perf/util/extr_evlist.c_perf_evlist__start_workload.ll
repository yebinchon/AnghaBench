; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__start_workload.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_perf_evlist__start_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"unable to write to pipe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__start_workload(%struct.evlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evlist*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %3, align 8
  %6 = load %struct.evlist*, %struct.evlist** %3, align 8
  %7 = getelementptr inbounds %struct.evlist, %struct.evlist* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  store i8 0, i8* %4, align 1
  %12 = load %struct.evlist*, %struct.evlist** %3, align 8
  %13 = getelementptr inbounds %struct.evlist, %struct.evlist* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @write(i64 %15, i8* %4, i32 1)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  %22 = load %struct.evlist*, %struct.evlist** %3, align 8
  %23 = getelementptr inbounds %struct.evlist, %struct.evlist* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @close(i64 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @write(i64, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
