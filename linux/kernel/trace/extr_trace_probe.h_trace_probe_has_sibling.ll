; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.h_trace_probe_has_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.h_trace_probe_has_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_probe*)* @trace_probe_has_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_probe_has_sibling(%struct.trace_probe* %0) #0 {
  %2 = alloca %struct.trace_probe*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.trace_probe* %0, %struct.trace_probe** %2, align 8
  %4 = load %struct.trace_probe*, %struct.trace_probe** %2, align 8
  %5 = call %struct.list_head* @trace_probe_probe_list(%struct.trace_probe* %4)
  store %struct.list_head* %5, %struct.list_head** %3, align 8
  %6 = load %struct.list_head*, %struct.list_head** %3, align 8
  %7 = call i32 @list_empty(%struct.list_head* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.list_head*, %struct.list_head** %3, align 8
  %11 = call i32 @list_is_singular(%struct.list_head* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ false, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local %struct.list_head* @trace_probe_probe_list(%struct.trace_probe*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_is_singular(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
