; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_zstd.c_zstd_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_zstd.c_zstd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zstd_data = type { i32*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Couldn't create decompression stream.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to initialize decompression stream: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Couldn't create compression stream.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to initialize compression stream: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zstd_init(%struct.zstd_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zstd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.zstd_data* %0, %struct.zstd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32* (...) @ZSTD_createDStream()
  %8 = load %struct.zstd_data*, %struct.zstd_data** %4, align 8
  %9 = getelementptr inbounds %struct.zstd_data, %struct.zstd_data* %8, i32 0, i32 1
  store i32* %7, i32** %9, align 8
  %10 = load %struct.zstd_data*, %struct.zstd_data** %4, align 8
  %11 = getelementptr inbounds %struct.zstd_data, %struct.zstd_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.zstd_data*, %struct.zstd_data** %4, align 8
  %18 = getelementptr inbounds %struct.zstd_data, %struct.zstd_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @ZSTD_initDStream(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @ZSTD_isError(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @ZSTD_getErrorName(i64 %25)
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %3, align 4
  br label %56

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %56

32:                                               ; preds = %28
  %33 = call i32* (...) @ZSTD_createCStream()
  %34 = load %struct.zstd_data*, %struct.zstd_data** %4, align 8
  %35 = getelementptr inbounds %struct.zstd_data, %struct.zstd_data* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.zstd_data*, %struct.zstd_data** %4, align 8
  %37 = getelementptr inbounds %struct.zstd_data, %struct.zstd_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %56

42:                                               ; preds = %32
  %43 = load %struct.zstd_data*, %struct.zstd_data** %4, align 8
  %44 = getelementptr inbounds %struct.zstd_data, %struct.zstd_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @ZSTD_initCStream(i32* %45, i32 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @ZSTD_isError(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @ZSTD_getErrorName(i64 %52)
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  store i32 -1, i32* %3, align 4
  br label %56

55:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %51, %40, %31, %24, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32* @ZSTD_createDStream(...) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @ZSTD_initDStream(i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

declare dso_local i32* @ZSTD_createCStream(...) #1

declare dso_local i64 @ZSTD_initCStream(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
