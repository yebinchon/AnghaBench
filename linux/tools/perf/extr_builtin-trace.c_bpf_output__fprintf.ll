; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_bpf_output__fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_bpf_output__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, i32 }
%struct.perf_sample = type { i32, i32 }

@bpf_output__printer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace*, %struct.perf_sample*)* @bpf_output__fprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_output__fprintf(%struct.trace* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca %struct.trace*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  store %struct.trace* %0, %struct.trace** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %5 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %6 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %9 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @bpf_output__printer, align 4
  %12 = load %struct.trace*, %struct.trace** %3, align 8
  %13 = getelementptr inbounds %struct.trace, %struct.trace* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @binary__fprintf(i32 %7, i32 %10, i32 8, i32 %11, i32* null, i32 %14)
  %16 = load %struct.trace*, %struct.trace** %3, align 8
  %17 = getelementptr inbounds %struct.trace, %struct.trace* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  ret void
}

declare dso_local i32 @binary__fprintf(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
