; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_free_synth_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_free_synth_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synth_field = type { %struct.synth_field*, %struct.synth_field* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synth_field*)* @free_synth_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_synth_field(%struct.synth_field* %0) #0 {
  %2 = alloca %struct.synth_field*, align 8
  store %struct.synth_field* %0, %struct.synth_field** %2, align 8
  %3 = load %struct.synth_field*, %struct.synth_field** %2, align 8
  %4 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %3, i32 0, i32 1
  %5 = load %struct.synth_field*, %struct.synth_field** %4, align 8
  %6 = call i32 @kfree(%struct.synth_field* %5)
  %7 = load %struct.synth_field*, %struct.synth_field** %2, align 8
  %8 = getelementptr inbounds %struct.synth_field, %struct.synth_field* %7, i32 0, i32 0
  %9 = load %struct.synth_field*, %struct.synth_field** %8, align 8
  %10 = call i32 @kfree(%struct.synth_field* %9)
  %11 = load %struct.synth_field*, %struct.synth_field** %2, align 8
  %12 = call i32 @kfree(%struct.synth_field* %11)
  ret void
}

declare dso_local i32 @kfree(%struct.synth_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
