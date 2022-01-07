; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_get_pair_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-diff.c_get_pair_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32 }
%struct.diff_hpp_fmt = type { i32 }
%struct.data__file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_entry* (%struct.hist_entry*, %struct.diff_hpp_fmt*)* @get_pair_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_entry* @get_pair_fmt(%struct.hist_entry* %0, %struct.diff_hpp_fmt* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.diff_hpp_fmt*, align 8
  %5 = alloca %struct.data__file*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store %struct.diff_hpp_fmt* %1, %struct.diff_hpp_fmt** %4, align 8
  %6 = load %struct.diff_hpp_fmt*, %struct.diff_hpp_fmt** %4, align 8
  %7 = getelementptr inbounds %struct.diff_hpp_fmt, %struct.diff_hpp_fmt* %6, i32 0, i32 0
  %8 = call %struct.data__file* @fmt_to_data_file(i32* %7)
  store %struct.data__file* %8, %struct.data__file** %5, align 8
  %9 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %10 = load %struct.data__file*, %struct.data__file** %5, align 8
  %11 = call %struct.hist_entry* @get_pair_data(%struct.hist_entry* %9, %struct.data__file* %10)
  ret %struct.hist_entry* %11
}

declare dso_local %struct.data__file* @fmt_to_data_file(i32*) #1

declare dso_local %struct.hist_entry* @get_pair_data(%struct.hist_entry*, %struct.data__file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
