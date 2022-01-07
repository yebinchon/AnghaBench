; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth_pwre.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth_pwre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32 }
%struct.perf_synth_intel_pwre = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c" hw: %u cstate: %u sub-cstate: %u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, i32*)* @perf_sample__fprintf_synth_pwre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_synth_pwre(%struct.perf_sample* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.perf_synth_intel_pwre*, align 8
  %7 = alloca i32, align 4
  %8 = alloca { i64, i32 }, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %10 = call %struct.perf_synth_intel_pwre* @perf_sample__synth_ptr(%struct.perf_sample* %9)
  store %struct.perf_synth_intel_pwre* %10, %struct.perf_synth_intel_pwre** %6, align 8
  %11 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %12 = load %struct.perf_synth_intel_pwre*, %struct.perf_synth_intel_pwre** %6, align 8
  %13 = bitcast { i64, i32 }* %8 to i8*
  %14 = bitcast %struct.perf_synth_intel_pwre* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @perf_sample__bad_synth_size(%struct.perf_sample* %11, i64 %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.perf_synth_intel_pwre*, %struct.perf_synth_intel_pwre** %6, align 8
  %25 = getelementptr inbounds %struct.perf_synth_intel_pwre, %struct.perf_synth_intel_pwre* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.perf_synth_intel_pwre*, %struct.perf_synth_intel_pwre** %6, align 8
  %28 = getelementptr inbounds %struct.perf_synth_intel_pwre, %struct.perf_synth_intel_pwre* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.perf_synth_intel_pwre*, %struct.perf_synth_intel_pwre** %6, align 8
  %31 = getelementptr inbounds %struct.perf_synth_intel_pwre, %struct.perf_synth_intel_pwre* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @perf_sample__fprintf_pt_spacing(i32 %35, i32* %36)
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %22, %21
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.perf_synth_intel_pwre* @perf_sample__synth_ptr(%struct.perf_sample*) #1

declare dso_local i64 @perf_sample__bad_synth_size(%struct.perf_sample*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @perf_sample__fprintf_pt_spacing(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
