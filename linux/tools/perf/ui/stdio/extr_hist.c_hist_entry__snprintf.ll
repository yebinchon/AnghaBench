; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_hist_entry__snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_hist_entry__snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.perf_hpp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.perf_hpp*)* @hist_entry__snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__snprintf(%struct.hist_entry* %0, %struct.perf_hpp* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.perf_hpp*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store %struct.perf_hpp* %1, %struct.perf_hpp** %4, align 8
  %5 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %6 = load %struct.perf_hpp*, %struct.perf_hpp** %4, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__hist_entry__snprintf(%struct.hist_entry* %5, %struct.perf_hpp* %6, i32 %11)
  ret i32 %12
}

declare dso_local i32 @__hist_entry__snprintf(%struct.hist_entry*, %struct.perf_hpp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
