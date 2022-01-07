; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_access_dso_mem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_access_dso_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_info = type { i32 }
%struct.map = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"unwind: no map for %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_info*, i64, i64*)* @access_dso_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_dso_mem(%struct.unwind_info* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unwind_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca i32, align 4
  store %struct.unwind_info* %0, %struct.unwind_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %12 = call %struct.map* @find_map(i64 %10, %struct.unwind_info* %11)
  store %struct.map* %12, %struct.map** %8, align 8
  %13 = load %struct.map*, %struct.map** %8, align 8
  %14 = icmp ne %struct.map* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 -1, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.map*, %struct.map** %8, align 8
  %20 = getelementptr inbounds %struct.map, %struct.map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %41

24:                                               ; preds = %18
  %25 = load %struct.map*, %struct.map** %8, align 8
  %26 = getelementptr inbounds %struct.map, %struct.map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.map*, %struct.map** %8, align 8
  %29 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %30 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = bitcast i64* %33 to i32*
  %35 = call i32 @dso__data_read_addr(i32 %27, %struct.map* %28, i32 %31, i64 %32, i32* %34, i32 8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 8
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %24, %23, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.map* @find_map(i64, %struct.unwind_info*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @dso__data_read_addr(i32, %struct.map*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
