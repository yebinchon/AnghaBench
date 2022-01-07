; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_add_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_add_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.msr_counter*, %struct.msr_counter*, i32, %struct.msr_counter* }
%struct.msr_counter = type { i32, i32, i32, i32, i32, %struct.msr_counter*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@NAME_BYTES = common dso_local global i32 0, align 4
@PATH_BYTES = common dso_local global i32 0, align 4
@sys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_ADDED_THREAD_COUNTERS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"exceeded max %d added thread counters\0A\00", align 1
@MAX_ADDED_COUNTERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"exceeded max %d added core counters\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"exceeded max %d added package counters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_counter(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.msr_counter*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = call %struct.msr_counter* @calloc(i32 1, i32 40)
  store %struct.msr_counter* %18, %struct.msr_counter** %17, align 8
  %19 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %20 = icmp eq %struct.msr_counter* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %27 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %29 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* @NAME_BYTES, align 4
  %33 = call i32 @strncpy(i32 %30, i8* %31, i32 %32)
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %38 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @PATH_BYTES, align 4
  %42 = call i32 @strncpy(i32 %39, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %24
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %46 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %49 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %52 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %55 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  switch i32 %56, label %105 [
    i32 129, label %57
    i32 130, label %73
    i32 128, label %89
  ]

57:                                               ; preds = %43
  %58 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 5), align 8
  %59 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %60 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %59, i32 0, i32 5
  store %struct.msr_counter* %58, %struct.msr_counter** %60, align 8
  %61 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  store %struct.msr_counter* %61, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 5), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 4), align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 4), align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 4), align 8
  %65 = load i32, i32* @MAX_ADDED_THREAD_COUNTERS, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* @MAX_ADDED_COUNTERS, align 4
  %70 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = call i32 @exit(i32 -1) #3
  unreachable

72:                                               ; preds = %57
  br label %105

73:                                               ; preds = %43
  %74 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 3), align 8
  %75 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %76 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %75, i32 0, i32 5
  store %struct.msr_counter* %74, %struct.msr_counter** %76, align 8
  %77 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  store %struct.msr_counter* %77, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 3), align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  %81 = load i32, i32* @MAX_ADDED_COUNTERS, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load i32, i32* @stderr, align 4
  %85 = load i32, i32* @MAX_ADDED_COUNTERS, align 4
  %86 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = call i32 @exit(i32 -1) #3
  unreachable

88:                                               ; preds = %73
  br label %105

89:                                               ; preds = %43
  %90 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 2), align 8
  %91 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  %92 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %91, i32 0, i32 5
  store %struct.msr_counter* %90, %struct.msr_counter** %92, align 8
  %93 = load %struct.msr_counter*, %struct.msr_counter** %17, align 8
  store %struct.msr_counter* %93, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 2), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 1), align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 1), align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 1), align 4
  %97 = load i32, i32* @MAX_ADDED_COUNTERS, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* @MAX_ADDED_COUNTERS, align 4
  %102 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = call i32 @exit(i32 -1) #3
  unreachable

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %43, %104, %88, %72
  ret i32 0
}

declare dso_local %struct.msr_counter* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
