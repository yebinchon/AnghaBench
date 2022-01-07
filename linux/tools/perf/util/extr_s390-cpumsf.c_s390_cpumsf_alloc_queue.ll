; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_cpumsf_queue = type { i32, i32, i32*, %struct.s390_cpumsf* }
%struct.s390_cpumsf = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"%s/aux.smp.%02x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"aux.smp.%02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Failed to open auxiliary log file %s,continue...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s390_cpumsf_queue* (%struct.s390_cpumsf*, i32)* @s390_cpumsf_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s390_cpumsf_queue* @s390_cpumsf_alloc_queue(%struct.s390_cpumsf* %0, i32 %1) #0 {
  %3 = alloca %struct.s390_cpumsf_queue*, align 8
  %4 = alloca %struct.s390_cpumsf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s390_cpumsf_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.s390_cpumsf* %0, %struct.s390_cpumsf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.s390_cpumsf_queue* @zalloc(i32 24)
  store %struct.s390_cpumsf_queue* %9, %struct.s390_cpumsf_queue** %6, align 8
  %10 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %11 = icmp eq %struct.s390_cpumsf_queue* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.s390_cpumsf_queue* null, %struct.s390_cpumsf_queue** %3, align 8
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %15 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %16 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %15, i32 0, i32 3
  store %struct.s390_cpumsf* %14, %struct.s390_cpumsf** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %19 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %21 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %20, i32 0, i32 1
  store i32 -1, i32* %21, align 4
  %22 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %23 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %13
  %27 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %28 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %33 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  br label %41

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8**, i8*, i32, ...) @asprintf(i8** %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ %37, %31 ], [ %40, %38 ]
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i32* @fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %49 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  %52 = getelementptr inbounds %struct.s390_cpumsf_queue, %struct.s390_cpumsf_queue* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %59 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %60, %13
  %64 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %6, align 8
  store %struct.s390_cpumsf_queue* %64, %struct.s390_cpumsf_queue** %3, align 8
  br label %65

65:                                               ; preds = %63, %12
  %66 = load %struct.s390_cpumsf_queue*, %struct.s390_cpumsf_queue** %3, align 8
  ret %struct.s390_cpumsf_queue* %66
}

declare dso_local %struct.s390_cpumsf_queue* @zalloc(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
