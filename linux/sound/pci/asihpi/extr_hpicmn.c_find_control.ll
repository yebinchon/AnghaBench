; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_find_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpicmn.c_find_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_control_cache = type { %struct.hpi_control_cache_info** }
%struct.hpi_control_cache_info = type { i64 }

@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"control_cache_alloc_check() failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Uncached Control %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"find_control() type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i64, %struct.hpi_control_cache*, %struct.hpi_control_cache_info**)* @find_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @find_control(i64 %0, %struct.hpi_control_cache* %1, %struct.hpi_control_cache_info** %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca %struct.hpi_control_cache*, align 8
  %7 = alloca %struct.hpi_control_cache_info**, align 8
  store i64 %0, i64* %5, align 8
  store %struct.hpi_control_cache* %1, %struct.hpi_control_cache** %6, align 8
  store %struct.hpi_control_cache_info** %2, %struct.hpi_control_cache_info*** %7, align 8
  %8 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %6, align 8
  %9 = call i32 @control_cache_alloc_check(%struct.hpi_control_cache* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @VERBOSE, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @HPI_DEBUG_LOG(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i16 0, i16* %4, align 2
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.hpi_control_cache*, %struct.hpi_control_cache** %6, align 8
  %17 = getelementptr inbounds %struct.hpi_control_cache, %struct.hpi_control_cache* %16, i32 0, i32 0
  %18 = load %struct.hpi_control_cache_info**, %struct.hpi_control_cache_info*** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %18, i64 %19
  %21 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %20, align 8
  %22 = load %struct.hpi_control_cache_info**, %struct.hpi_control_cache_info*** %7, align 8
  store %struct.hpi_control_cache_info* %21, %struct.hpi_control_cache_info** %22, align 8
  %23 = load %struct.hpi_control_cache_info**, %struct.hpi_control_cache_info*** %7, align 8
  %24 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %23, align 8
  %25 = icmp ne %struct.hpi_control_cache_info* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @VERBOSE, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @HPI_DEBUG_LOG(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  store i16 0, i16* %4, align 2
  br label %38

30:                                               ; preds = %15
  %31 = load i32, i32* @VERBOSE, align 4
  %32 = load %struct.hpi_control_cache_info**, %struct.hpi_control_cache_info*** %7, align 8
  %33 = load %struct.hpi_control_cache_info*, %struct.hpi_control_cache_info** %32, align 8
  %34 = getelementptr inbounds %struct.hpi_control_cache_info, %struct.hpi_control_cache_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @HPI_DEBUG_LOG(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %30
  store i16 1, i16* %4, align 2
  br label %38

38:                                               ; preds = %37, %26, %11
  %39 = load i16, i16* %4, align 2
  ret i16 %39
}

declare dso_local i32 @control_cache_alloc_check(%struct.hpi_control_cache*) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
