; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_append.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_probe_append(%struct.trace_probe* %0, %struct.trace_probe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_probe*, align 8
  %5 = alloca %struct.trace_probe*, align 8
  store %struct.trace_probe* %0, %struct.trace_probe** %4, align 8
  store %struct.trace_probe* %1, %struct.trace_probe** %5, align 8
  %6 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %7 = call i64 @trace_probe_has_sibling(%struct.trace_probe* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %14 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %13, i32 0, i32 0
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %17 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_probe_event_free(i32 %18)
  %20 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %21 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %24 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %26 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %25, i32 0, i32 0
  %27 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %28 = call i32 @trace_probe_probe_list(%struct.trace_probe* %27)
  %29 = call i32 @list_add_tail(i32* %26, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %12, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @trace_probe_has_sibling(%struct.trace_probe*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @trace_probe_event_free(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @trace_probe_probe_list(%struct.trace_probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
