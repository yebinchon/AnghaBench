; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_dwarf-unwind.c_init_live_machine.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_dwarf-unwind.c_init_live_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { i32 }

@mmap_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*)* @init_live_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_live_machine(%struct.machine* %0) #0 {
  %2 = alloca %struct.machine*, align 8
  %3 = alloca %union.perf_event, align 4
  %4 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %2, align 8
  %5 = call i32 (...) @getpid()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @mmap_handler, align 4
  %9 = load %struct.machine*, %struct.machine** %2, align 8
  %10 = call i32 @perf_event__synthesize_mmap_events(i32* null, %union.perf_event* %3, i32 %6, i32 %7, i32 %8, %struct.machine* %9, i32 1)
  ret i32 %10
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @perf_event__synthesize_mmap_events(i32*, %union.perf_event*, i32, i32, i32, %struct.machine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
