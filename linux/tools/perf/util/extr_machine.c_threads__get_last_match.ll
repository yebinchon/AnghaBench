; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_threads__get_last_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_threads__get_last_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.threads = type { i32 }
%struct.machine = type { i32 }

@perf_singlethreaded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread* (%struct.threads*, %struct.machine*, i32, i32)* @threads__get_last_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread* @threads__get_last_match(%struct.threads* %0, %struct.machine* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.threads*, align 8
  %6 = alloca %struct.machine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  store %struct.threads* %0, %struct.threads** %5, align 8
  store %struct.machine* %1, %struct.machine** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.thread* null, %struct.thread** %9, align 8
  %10 = load i64, i64* @perf_singlethreaded, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.threads*, %struct.threads** %5, align 8
  %14 = load %struct.machine*, %struct.machine** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.thread* @__threads__get_last_match(%struct.threads* %13, %struct.machine* %14, i32 %15, i32 %16)
  store %struct.thread* %17, %struct.thread** %9, align 8
  br label %18

18:                                               ; preds = %12, %4
  %19 = load %struct.thread*, %struct.thread** %9, align 8
  ret %struct.thread* %19
}

declare dso_local %struct.thread* @__threads__get_last_match(%struct.threads*, %struct.machine*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
