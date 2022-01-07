; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__lck_scnprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_perf_mem__lck_scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_MEM_LOCK_NA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@PERF_MEM_LOCK_LOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_mem__lck_scnprintf(i8* %0, i64 %1, %struct.mem_info* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mem_info* %2, %struct.mem_info** %6, align 8
  %9 = load i32, i32* @PERF_MEM_LOCK_NA, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %11 = icmp ne %struct.mem_info* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.mem_info*, %struct.mem_info** %6, align 8
  %14 = getelementptr inbounds %struct.mem_info, %struct.mem_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PERF_MEM_LOCK_NA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @scnprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %8, align 4
  br label %40

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PERF_MEM_LOCK_LOCKED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @scnprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %26
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @scnprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @scnprintf(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
