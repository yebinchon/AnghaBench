; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth_mwait.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32 }
%struct.perf_synth_intel_mwait = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c" hints: %#x extensions: %#x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, i32*)* @perf_sample__fprintf_synth_mwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_synth_mwait(%struct.perf_sample* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.perf_synth_intel_mwait*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %9 = call %struct.perf_synth_intel_mwait* @perf_sample__synth_ptr(%struct.perf_sample* %8)
  store %struct.perf_synth_intel_mwait* %9, %struct.perf_synth_intel_mwait** %6, align 8
  %10 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %11 = load %struct.perf_synth_intel_mwait*, %struct.perf_synth_intel_mwait** %6, align 8
  %12 = bitcast %struct.perf_synth_intel_mwait* %11 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = call i64 @perf_sample__bad_synth_size(%struct.perf_sample* %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.perf_synth_intel_mwait*, %struct.perf_synth_intel_mwait** %6, align 8
  %20 = getelementptr inbounds %struct.perf_synth_intel_mwait, %struct.perf_synth_intel_mwait* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.perf_synth_intel_mwait*, %struct.perf_synth_intel_mwait** %6, align 8
  %23 = getelementptr inbounds %struct.perf_synth_intel_mwait, %struct.perf_synth_intel_mwait* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @perf_sample__fprintf_pt_spacing(i32 %27, i32* %28)
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %17, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.perf_synth_intel_mwait* @perf_sample__synth_ptr(%struct.perf_sample*) #1

declare dso_local i64 @perf_sample__bad_synth_size(%struct.perf_sample*, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @perf_sample__fprintf_pt_spacing(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
