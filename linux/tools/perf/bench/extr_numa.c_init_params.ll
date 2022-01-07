; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"\0A # Running %s \22perf bench numa\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.params*, i8*, i32, i8**)* @init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_params(%struct.params* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %23, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i8**, i8*** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %12

26:                                               ; preds = %12
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.params*, %struct.params** %5, align 8
  %29 = call i32 @memset(%struct.params* %28, i32 0, i32 56)
  %30 = load %struct.params*, %struct.params** %5, align 8
  %31 = getelementptr inbounds %struct.params, %struct.params* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.params*, %struct.params** %5, align 8
  %33 = getelementptr inbounds %struct.params, %struct.params* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.params*, %struct.params** %5, align 8
  %35 = getelementptr inbounds %struct.params, %struct.params* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load %struct.params*, %struct.params** %5, align 8
  %37 = getelementptr inbounds %struct.params, %struct.params* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.params*, %struct.params** %5, align 8
  %39 = getelementptr inbounds %struct.params, %struct.params* %38, i32 0, i32 4
  store i32 1, i32* %39, align 8
  %40 = load %struct.params*, %struct.params** %5, align 8
  %41 = getelementptr inbounds %struct.params, %struct.params* %40, i32 0, i32 5
  store i32 -1, i32* %41, align 4
  %42 = load %struct.params*, %struct.params** %5, align 8
  %43 = getelementptr inbounds %struct.params, %struct.params* %42, i32 0, i32 6
  store i32 1, i32* %43, align 8
  %44 = load %struct.params*, %struct.params** %5, align 8
  %45 = getelementptr inbounds %struct.params, %struct.params* %44, i32 0, i32 7
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.params*, %struct.params** %5, align 8
  %47 = getelementptr inbounds %struct.params, %struct.params* %46, i32 0, i32 8
  store i32 1, i32* %47, align 8
  %48 = load %struct.params*, %struct.params** %5, align 8
  %49 = getelementptr inbounds %struct.params, %struct.params* %48, i32 0, i32 9
  store i32 1, i32* %49, align 4
  %50 = load %struct.params*, %struct.params** %5, align 8
  %51 = getelementptr inbounds %struct.params, %struct.params* %50, i32 0, i32 10
  store i32 5, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = load %struct.params*, %struct.params** %5, align 8
  %56 = getelementptr inbounds %struct.params, %struct.params* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(%struct.params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
