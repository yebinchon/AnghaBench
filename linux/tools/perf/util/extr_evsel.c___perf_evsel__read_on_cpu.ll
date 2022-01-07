; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__read_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evsel.c___perf_evsel__read_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32* }
%struct.perf_counts_values = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__perf_evsel__read_on_cpu(%struct.evsel* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_counts_values, align 4
  %11 = alloca i64, align 8
  store %struct.evsel* %0, %struct.evsel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 3, i32 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = load %struct.evsel*, %struct.evsel** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @FD(%struct.evsel* %17, i32 %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %68

25:                                               ; preds = %4
  %26 = load %struct.evsel*, %struct.evsel** %6, align 8
  %27 = getelementptr inbounds %struct.evsel, %struct.evsel* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.evsel*, %struct.evsel** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i64 @perf_evsel__alloc_counts(%struct.evsel* %31, i32 %33, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %68

41:                                               ; preds = %30, %25
  %42 = load %struct.evsel*, %struct.evsel** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @FD(%struct.evsel* %42, i32 %43, i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = mul i64 %46, 4
  %48 = call i64 @readn(i64 %45, %struct.perf_counts_values* %10, i64 %47)
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @errno, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %68

53:                                               ; preds = %41
  %54 = load %struct.evsel*, %struct.evsel** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @perf_evsel__compute_deltas(%struct.evsel* %54, i32 %55, i32 %56, %struct.perf_counts_values* %10)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @perf_counts_values__scale(%struct.perf_counts_values* %10, i32 %58, i32* null)
  %60 = load %struct.evsel*, %struct.evsel** %6, align 8
  %61 = getelementptr inbounds %struct.evsel, %struct.evsel* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call %struct.perf_counts_values* @perf_counts(i32* %62, i32 %63, i32 %64)
  %66 = bitcast %struct.perf_counts_values* %65 to i8*
  %67 = bitcast %struct.perf_counts_values* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %53, %50, %38, %22
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @FD(%struct.evsel*, i32, i32) #1

declare dso_local i64 @perf_evsel__alloc_counts(%struct.evsel*, i32, i32) #1

declare dso_local i64 @readn(i64, %struct.perf_counts_values*, i64) #1

declare dso_local i32 @perf_evsel__compute_deltas(%struct.evsel*, i32, i32, %struct.perf_counts_values*) #1

declare dso_local i32 @perf_counts_values__scale(%struct.perf_counts_values*, i32, i32*) #1

declare dso_local %struct.perf_counts_values* @perf_counts(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
