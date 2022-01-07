; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i64 }

@.str = private unnamed_addr constant [46 x i8] c"failed to allocate read_values threads arrays\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to allocate read_values counters arrays\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_read_values_init(%struct.perf_read_values* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_read_values*, align 8
  store %struct.perf_read_values* %0, %struct.perf_read_values** %3, align 8
  %4 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %5 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %4, i32 0, i32 0
  store i32 16, i32* %5, align 8
  %6 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %7 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 1
  %11 = trunc i64 %10 to i32
  %12 = call i8* @malloc(i32 %11)
  %13 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %14 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %16 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = call i8* @malloc(i32 %20)
  %22 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %23 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %25 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i8* @zalloc(i32 %29)
  %31 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %32 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %34 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %39 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %44 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %37, %1
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %93

49:                                               ; preds = %42
  %50 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %51 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %53 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %52, i32 0, i32 1
  store i32 16, i32* %53, align 4
  %54 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %55 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i8* @malloc(i32 %59)
  %61 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %62 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %64 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = call i8* @malloc(i32 %68)
  %70 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %71 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %73 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %72, i32 0, i32 6
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %49
  %77 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %78 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %76, %49
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %86

83:                                               ; preds = %76
  %84 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %85 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  store i32 0, i32* %2, align 4
  br label %105

86:                                               ; preds = %81
  %87 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %88 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %87, i32 0, i32 6
  %89 = call i32 @zfree(i8** %88)
  %90 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %91 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %90, i32 0, i32 5
  %92 = call i32 @zfree(i8** %91)
  br label %93

93:                                               ; preds = %86, %47
  %94 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %95 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %94, i32 0, i32 4
  %96 = call i32 @zfree(i8** %95)
  %97 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %98 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %97, i32 0, i32 3
  %99 = call i32 @zfree(i8** %98)
  %100 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %101 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %100, i32 0, i32 2
  %102 = call i32 @zfree(i8** %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %93, %83
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @zfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
