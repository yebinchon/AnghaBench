; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values__enlarge_threads.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values__enlarge_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [45 x i8] c"failed to enlarge read_values threads arrays\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_read_values*)* @perf_read_values__enlarge_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_read_values__enlarge_threads(%struct.perf_read_values* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_read_values*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.perf_read_values* %0, %struct.perf_read_values** %3, align 8
  %8 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %9 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %4, align 4
  %12 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %13 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = call i8* @realloc(i8* %14, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %21 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = call i8* @realloc(i8* %22, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %29 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i8* @realloc(i8* %30, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load i8*, i8** %6, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38, %1
  br label %58

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %48 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %51 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %54 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %57 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  store i32 0, i32* %2, align 4
  br label %68

58:                                               ; preds = %44
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @free(i8* %63)
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %58, %45
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
