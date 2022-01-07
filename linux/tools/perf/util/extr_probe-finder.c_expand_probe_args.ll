; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_expand_probe_args.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_expand_probe_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_finder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.perf_probe_arg* }
%struct.perf_probe_arg = type { i32 }
%struct.local_vars_finder = type { i32, i64, i32, i32, %struct.perf_probe_arg*, %struct.probe_finder* }

@MAX_PROBE_ARGS = common dso_local global i32 0, align 4
@PROBE_ARG_VARS = common dso_local global i32 0, align 4
@PROBE_ARG_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Expanding %s into:\00", align 1
@copy_variables_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.probe_finder*, %struct.perf_probe_arg*)* @expand_probe_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_probe_args(i32* %0, %struct.probe_finder* %1, %struct.perf_probe_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.probe_finder*, align 8
  %7 = alloca %struct.perf_probe_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_vars_finder, align 8
  store i32* %0, i32** %5, align 8
  store %struct.probe_finder* %1, %struct.probe_finder** %6, align 8
  store %struct.perf_probe_arg* %2, %struct.perf_probe_arg** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 3
  %16 = load i32, i32* @MAX_PROBE_ARGS, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 4
  %18 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %7, align 8
  store %struct.perf_probe_arg* %18, %struct.perf_probe_arg** %17, align 8
  %19 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 5
  %20 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  store %struct.probe_finder* %20, %struct.probe_finder** %19, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %110, %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %24 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %113

29:                                               ; preds = %21
  %30 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %31 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %34, i64 %36
  %38 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PROBE_ARG_VARS, align 4
  %41 = call i64 @strcmp(i32 %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %77

45:                                               ; preds = %29
  %46 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %47 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %50, i64 %52
  %54 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PROBE_ARG_PARAMS, align 4
  %57 = call i64 @strcmp(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %45
  %60 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %60, i64 %62
  %64 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %65 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %68, i64 %70
  %72 = bitcast %struct.perf_probe_arg* %63 to i8*
  %73 = bitcast %struct.perf_probe_arg* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %110

76:                                               ; preds = %45
  br label %77

77:                                               ; preds = %76, %43
  %78 = load %struct.probe_finder*, %struct.probe_finder** %6, align 8
  %79 = getelementptr inbounds %struct.probe_finder, %struct.probe_finder* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load %struct.perf_probe_arg*, %struct.perf_probe_arg** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %82, i64 %84
  %86 = getelementptr inbounds %struct.perf_probe_arg, %struct.perf_probe_arg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @copy_variables_cb, align 4
  %93 = bitcast %struct.local_vars_finder* %11 to i8*
  %94 = call i32 @die_find_child(i32* %91, i32 %92, i8* %93, i32* %8)
  %95 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %77
  %104 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %115

107:                                              ; preds = %77
  %108 = getelementptr inbounds %struct.local_vars_finder, %struct.local_vars_finder* %11, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %107, %59
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %21

113:                                              ; preds = %21
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %103
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i64 @strcmp(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @die_find_child(i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
