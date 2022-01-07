; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c__unwind__get_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c__unwind__get_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.perf_sample = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.unwind_info = type { i32, %struct.thread*, %struct.perf_sample* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.thread*, %struct.perf_sample*, i32)* @_unwind__get_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_unwind__get_entries(i32 %0, i8* %1, %struct.thread* %2, %struct.perf_sample* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.unwind_info, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %12, i32 0, i32 0
  %14 = load %struct.thread*, %struct.thread** %9, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 8
  %19 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %12, i32 0, i32 1
  %20 = load %struct.thread*, %struct.thread** %9, align 8
  store %struct.thread* %20, %struct.thread** %19, align 8
  %21 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %12, i32 0, i32 2
  %22 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  store %struct.perf_sample* %22, %struct.perf_sample** %21, align 8
  %23 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %24 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %42

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @get_entries(%struct.unwind_info* %12, i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %34, %28
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @get_entries(%struct.unwind_info*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
