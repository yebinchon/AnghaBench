; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_env__get_core.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_env__get_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }
%struct.perf_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"The socket id number is too big.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"The die id number is too big.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"The core id number is too big.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_cpu_map*, i32, i8*)* @perf_env__get_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_env__get_core(%struct.perf_cpu_map* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_cpu_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_cpu_map* %0, %struct.perf_cpu_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.perf_env*
  store %struct.perf_env* %12, %struct.perf_env** %8, align 8
  store i32 -1, i32* %9, align 4
  %13 = load %struct.perf_env*, %struct.perf_env** %8, align 8
  %14 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @perf_env__get_cpu(%struct.perf_env* %13, %struct.perf_cpu_map* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %88

19:                                               ; preds = %3
  %20 = load %struct.perf_env*, %struct.perf_env** %8, align 8
  %21 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = call i64 @WARN_ONCE(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %90

32:                                               ; preds = %19
  %33 = load %struct.perf_env*, %struct.perf_env** %8, align 8
  %34 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = call i64 @WARN_ONCE(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %90

45:                                               ; preds = %32
  %46 = load %struct.perf_env*, %struct.perf_env** %8, align 8
  %47 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 16
  %55 = call i64 @WARN_ONCE(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %90

58:                                               ; preds = %45
  %59 = load %struct.perf_env*, %struct.perf_env** %8, align 8
  %60 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 24
  %68 = load %struct.perf_env*, %struct.perf_env** %8, align 8
  %69 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 %67, %76
  %78 = load %struct.perf_env*, %struct.perf_env** %8, align 8
  %79 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 65535
  %87 = or i32 %77, %86
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %58, %3
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %57, %44, %31
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @perf_env__get_cpu(%struct.perf_env*, %struct.perf_cpu_map*, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
