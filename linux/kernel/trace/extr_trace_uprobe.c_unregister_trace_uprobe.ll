; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_unregister_trace_uprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_unregister_trace_uprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_uprobe = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_uprobe*)* @unregister_trace_uprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_trace_uprobe(%struct.trace_uprobe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_uprobe*, align 8
  %4 = alloca i32, align 4
  store %struct.trace_uprobe* %0, %struct.trace_uprobe** %3, align 8
  %5 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %6 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %5, i32 0, i32 0
  %7 = call i64 @trace_probe_has_sibling(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %12 = call i32 @unregister_uprobe_event(%struct.trace_uprobe* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %9
  %19 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %20 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %19, i32 0, i32 1
  %21 = call i32 @dyn_event_remove(i32* %20)
  %22 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %23 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %22, i32 0, i32 0
  %24 = call i32 @trace_probe_unlink(i32* %23)
  %25 = load %struct.trace_uprobe*, %struct.trace_uprobe** %3, align 8
  %26 = call i32 @free_trace_uprobe(%struct.trace_uprobe* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @trace_probe_has_sibling(i32*) #1

declare dso_local i32 @unregister_uprobe_event(%struct.trace_uprobe*) #1

declare dso_local i32 @dyn_event_remove(i32*) #1

declare dso_local i32 @trace_probe_unlink(i32*) #1

declare dso_local i32 @free_trace_uprobe(%struct.trace_uprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
