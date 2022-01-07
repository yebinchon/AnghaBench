; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_try_all_file_abis.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_try_all_file_abis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_header = type { i32 }

@attr_file_abi_sizes = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"ABI%d perf.data file detected, need_swap=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.perf_header*)* @try_all_file_abis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_all_file_abis(i64 %0, %struct.perf_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.perf_header* %1, %struct.perf_header** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i64*, i64** @attr_file_abi_sizes, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %9
  %17 = load i64*, i64** @attr_file_abi_sizes, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 4
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @bswap_64(i64 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %42

33:                                               ; preds = %26
  %34 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %35 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %16
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %39 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %9

45:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @bswap_64(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
