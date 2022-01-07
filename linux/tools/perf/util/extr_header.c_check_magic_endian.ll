; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_check_magic_endian.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_check_magic_endian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_header = type { i32, i32 }

@__perf_magic1 = common dso_local global i32 0, align 4
@PERF_HEADER_VERSION_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"legacy perf.data format\0A\00", align 1
@PERF_HEADER_VERSION_2 = common dso_local global i32 0, align 4
@__perf_magic2 = common dso_local global i64 0, align 8
@__perf_magic2_sw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, %struct.perf_header*)* @check_magic_endian to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_magic_endian(i64 %0, i32 %1, i32 %2, %struct.perf_header* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_header*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.perf_header* %3, %struct.perf_header** %9, align 8
  %11 = load i32, i32* @__perf_magic1, align 4
  %12 = call i32 @memcmp(i64* %6, i32 %11, i32 8)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %4
  %16 = load i32, i32* @PERF_HEADER_VERSION_1, align 4
  %17 = load %struct.perf_header*, %struct.perf_header** %9, align 8
  %18 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.perf_header*, %struct.perf_header** %9, align 8
  %25 = call i32 @try_all_pipe_abis(i32 %23, %struct.perf_header* %24)
  store i32 %25, i32* %5, align 4
  br label %46

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.perf_header*, %struct.perf_header** %9, align 8
  %29 = call i32 @try_all_file_abis(i32 %27, %struct.perf_header* %28)
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = load i32, i32* @PERF_HEADER_VERSION_2, align 4
  %32 = load %struct.perf_header*, %struct.perf_header** %9, align 8
  %33 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @__perf_magic2, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %46

38:                                               ; preds = %30
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @__perf_magic2_sw, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load %struct.perf_header*, %struct.perf_header** %9, align 8
  %45 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %42, %37, %26, %22
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @try_all_pipe_abis(i32, %struct.perf_header*) #1

declare dso_local i32 @try_all_file_abis(i32, %struct.perf_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
