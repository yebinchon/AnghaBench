; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_....utilhist.h_perf_hpp__prepend_sort_field.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_....utilhist.h_perf_hpp__prepend_sort_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_hpp_fmt = type { i32 }

@perf_hpp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_hpp_fmt*)* @perf_hpp__prepend_sort_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_hpp__prepend_sort_field(%struct.perf_hpp_fmt* %0) #0 {
  %2 = alloca %struct.perf_hpp_fmt*, align 8
  store %struct.perf_hpp_fmt* %0, %struct.perf_hpp_fmt** %2, align 8
  %3 = load %struct.perf_hpp_fmt*, %struct.perf_hpp_fmt** %2, align 8
  %4 = call i32 @perf_hpp_list__prepend_sort_field(i32* @perf_hpp_list, %struct.perf_hpp_fmt* %3)
  ret void
}

declare dso_local i32 @perf_hpp_list__prepend_sort_field(i32*, %struct.perf_hpp_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
