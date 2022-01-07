; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_clear_stack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_clear_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_stack = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_pt_stack*)* @intel_pt_clear_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pt_clear_stack(%struct.intel_pt_stack* %0) #0 {
  %2 = alloca %struct.intel_pt_stack*, align 8
  store %struct.intel_pt_stack* %0, %struct.intel_pt_stack** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %2, align 8
  %5 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %2, align 8
  %10 = call i32 @intel_pt_pop_blk(%struct.intel_pt_stack* %9)
  br label %3

11:                                               ; preds = %3
  %12 = load %struct.intel_pt_stack*, %struct.intel_pt_stack** %2, align 8
  %13 = getelementptr inbounds %struct.intel_pt_stack, %struct.intel_pt_stack* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  ret void
}

declare dso_local i32 @intel_pt_pop_blk(%struct.intel_pt_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
