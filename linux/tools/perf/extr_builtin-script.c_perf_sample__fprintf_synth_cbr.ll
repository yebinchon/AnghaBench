; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth_cbr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth_cbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32 }
%struct.perf_synth_intel_cbr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c" cbr: %2u freq: %4u MHz \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(%3u%%) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, i32*)* @perf_sample__fprintf_synth_cbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_synth_cbr(%struct.perf_sample* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.perf_synth_intel_cbr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca { i64, i32 }, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %12 = call %struct.perf_synth_intel_cbr* @perf_sample__synth_ptr(%struct.perf_sample* %11)
  store %struct.perf_synth_intel_cbr* %12, %struct.perf_synth_intel_cbr** %6, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %14 = load %struct.perf_synth_intel_cbr*, %struct.perf_synth_intel_cbr** %6, align 8
  %15 = bitcast { i64, i32 }* %10 to i8*
  %16 = bitcast %struct.perf_synth_intel_cbr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @perf_sample__bad_synth_size(%struct.perf_sample* %13, i64 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.perf_synth_intel_cbr*, %struct.perf_synth_intel_cbr** %6, align 8
  %26 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = add nsw i32 %28, 500
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.perf_synth_intel_cbr*, %struct.perf_synth_intel_cbr** %6, align 8
  %33 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.perf_synth_intel_cbr*, %struct.perf_synth_intel_cbr** %6, align 8
  %38 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %24
  %42 = load %struct.perf_synth_intel_cbr*, %struct.perf_synth_intel_cbr** %6, align 8
  %43 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 1000, %44
  %46 = load %struct.perf_synth_intel_cbr*, %struct.perf_synth_intel_cbr** %6, align 8
  %47 = getelementptr inbounds %struct.perf_synth_intel_cbr, %struct.perf_synth_intel_cbr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %45, %48
  %50 = add nsw i32 5, %49
  %51 = sdiv i32 %50, 10
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %41, %24
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @perf_sample__fprintf_pt_spacing(i32 %59, i32* %60)
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.perf_synth_intel_cbr* @perf_sample__synth_ptr(%struct.perf_sample*) #1

declare dso_local i64 @perf_sample__bad_synth_size(%struct.perf_sample*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #1

declare dso_local i32 @perf_sample__fprintf_pt_spacing(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
