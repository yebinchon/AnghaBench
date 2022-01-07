; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libdw.c_access_dso_mem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libdw.c_access_dso_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_info = type { i32, i32 }
%struct.addr_location = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unwind: no map for %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_info*, i64, i32*)* @access_dso_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_dso_mem(%struct.unwind_info* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unwind_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.addr_location, align 8
  %9 = alloca i32, align 4
  store %struct.unwind_info* %0, %struct.unwind_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %11 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @thread__find_map(i32 %12, i32 %13, i64 %14, %struct.addr_location* %8)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 -1, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %45

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %35 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @dso__data_read_addr(i32 %31, %struct.TYPE_2__* %33, i32 %36, i64 %37, i32* %38, i32 4)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %26, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @thread__find_map(i32, i32, i64, %struct.addr_location*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @dso__data_read_addr(i32, %struct.TYPE_2__*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
