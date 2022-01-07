; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.evsel*, i32*)* @perf_sample__fprintf_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_synth(%struct.perf_sample* %0, %struct.evsel* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca %struct.evsel*, align 8
  %7 = alloca i32*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %5, align 8
  store %struct.evsel* %1, %struct.evsel** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.evsel*, %struct.evsel** %6, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 130, label %13
    i32 131, label %17
    i32 129, label %21
    i32 132, label %25
    i32 128, label %29
    i32 133, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @perf_sample__fprintf_synth_ptwrite(%struct.perf_sample* %14, i32* %15)
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @perf_sample__fprintf_synth_mwait(%struct.perf_sample* %18, i32* %19)
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @perf_sample__fprintf_synth_pwre(%struct.perf_sample* %22, i32* %23)
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @perf_sample__fprintf_synth_exstop(%struct.perf_sample* %26, i32* %27)
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @perf_sample__fprintf_synth_pwrx(%struct.perf_sample* %30, i32* %31)
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %3
  %34 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @perf_sample__fprintf_synth_cbr(%struct.perf_sample* %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %33, %29, %25, %21, %17, %13
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @perf_sample__fprintf_synth_ptwrite(%struct.perf_sample*, i32*) #1

declare dso_local i32 @perf_sample__fprintf_synth_mwait(%struct.perf_sample*, i32*) #1

declare dso_local i32 @perf_sample__fprintf_synth_pwre(%struct.perf_sample*, i32*) #1

declare dso_local i32 @perf_sample__fprintf_synth_exstop(%struct.perf_sample*, i32*) #1

declare dso_local i32 @perf_sample__fprintf_synth_pwrx(%struct.perf_sample*, i32*) #1

declare dso_local i32 @perf_sample__fprintf_synth_cbr(%struct.perf_sample*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
