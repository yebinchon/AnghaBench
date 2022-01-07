; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__mmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_perf_top__mmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.evlist*, %struct.TYPE_3__ }
%struct.evlist = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BKW_MMAP_DATA_PENDING = common dso_local global i32 0, align 4
@BKW_MMAP_EMPTY = common dso_local global i32 0, align 4
@BKW_MMAP_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*)* @perf_top__mmap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__mmap_read(%struct.perf_top* %0) #0 {
  %2 = alloca %struct.perf_top*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %2, align 8
  %6 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %7 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %11 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %10, i32 0, i32 0
  %12 = load %struct.evlist*, %struct.evlist** %11, align 8
  store %struct.evlist* %12, %struct.evlist** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.evlist*, %struct.evlist** %4, align 8
  %17 = load i32, i32* @BKW_MMAP_DATA_PENDING, align 4
  %18 = call i32 @perf_evlist__toggle_bkw_mmap(%struct.evlist* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %23 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %22, i32 0, i32 0
  %24 = load %struct.evlist*, %struct.evlist** %23, align 8
  %25 = getelementptr inbounds %struct.evlist, %struct.evlist* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %21, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @perf_top__mmap_read_idx(%struct.perf_top* %30, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.evlist*, %struct.evlist** %4, align 8
  %41 = load i32, i32* @BKW_MMAP_EMPTY, align 4
  %42 = call i32 @perf_evlist__toggle_bkw_mmap(%struct.evlist* %40, i32 %41)
  %43 = load %struct.evlist*, %struct.evlist** %4, align 8
  %44 = load i32, i32* @BKW_MMAP_RUNNING, align 4
  %45 = call i32 @perf_evlist__toggle_bkw_mmap(%struct.evlist* %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @perf_evlist__toggle_bkw_mmap(%struct.evlist*, i32) #1

declare dso_local i32 @perf_top__mmap_read_idx(%struct.perf_top*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
