; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_uregs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_perf_sample__fprintf_uregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i32 }
%struct.perf_event_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.perf_event_attr*, i32*)* @perf_sample__fprintf_uregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sample__fprintf_uregs(%struct.perf_sample* %0, %struct.perf_event_attr* %1, i32* %2) #0 {
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.perf_event_attr*, align 8
  %6 = alloca i32*, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %4, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %8 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %7, i32 0, i32 0
  %9 = load %struct.perf_event_attr*, %struct.perf_event_attr** %5, align 8
  %10 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @perf_sample__fprintf_regs(i32* %8, i32 %11, i32* %12)
  ret i32 %13
}

declare dso_local i32 @perf_sample__fprintf_regs(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
