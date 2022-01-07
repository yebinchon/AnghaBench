; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/arm64/tests/extr_dwarf-unwind.c_sample_ustack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/arm64/tests/extr_dwarf-unwind.c_sample_ustack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { %struct.stack_dump }
%struct.stack_dump = type { i8*, i64 }
%struct.thread = type { i32 }
%struct.map = type { i64 }

@STACK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"failed to allocate sample uregs data\0A\00", align 1
@PERF_REG_ARM64_SP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get stack map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.thread*, i64*)* @sample_ustack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample_ustack(%struct.perf_sample* %0, %struct.thread* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.stack_dump*, align 8
  %9 = alloca %struct.map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 0
  store %struct.stack_dump* %14, %struct.stack_dump** %8, align 8
  %15 = load i64, i64* @STACK_SIZE, align 8
  %16 = call i64* @malloc(i64 %15)
  store i64* %16, i64** %12, align 8
  %17 = load i64*, i64** %12, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* @PERF_REG_ARM64_SP, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.thread*, %struct.thread** %6, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call %struct.map* @map_groups__find(i32 %28, i64 %29)
  store %struct.map* %30, %struct.map** %9, align 8
  %31 = load %struct.map*, %struct.map** %9, align 8
  %32 = icmp ne %struct.map* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64*, i64** %12, align 8
  %36 = call i32 @free(i64* %35)
  store i32 -1, i32* %4, align 4
  br label %64

37:                                               ; preds = %21
  %38 = load %struct.map*, %struct.map** %9, align 8
  %39 = getelementptr inbounds %struct.map, %struct.map* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = sub i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @STACK_SIZE, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @STACK_SIZE, align 8
  br label %50

48:                                               ; preds = %37
  %49 = load i64, i64* %11, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  store i64 %51, i64* %11, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %10, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @memcpy(i64* %52, i8* %54, i64 %55)
  %57 = load i64*, i64** %12, align 8
  %58 = bitcast i64* %57 to i8*
  %59 = load %struct.stack_dump*, %struct.stack_dump** %8, align 8
  %60 = getelementptr inbounds %struct.stack_dump, %struct.stack_dump* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.stack_dump*, %struct.stack_dump** %8, align 8
  %63 = getelementptr inbounds %struct.stack_dump, %struct.stack_dump* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %50, %33, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.map* @map_groups__find(i32, i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
