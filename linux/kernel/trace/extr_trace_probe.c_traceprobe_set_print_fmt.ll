; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_set_print_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_set_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32 }
%struct.trace_event_call = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @traceprobe_set_print_fmt(%struct.trace_probe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_probe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_event_call*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.trace_probe* %0, %struct.trace_probe** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %10 = call %struct.trace_event_call* @trace_probe_event_call(%struct.trace_probe* %9)
  store %struct.trace_event_call* %10, %struct.trace_event_call** %6, align 8
  %11 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @__set_print_fmt(%struct.trace_probe* %11, i8* null, i32 0, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @__set_print_fmt(%struct.trace_probe* %24, i8* %25, i32 %27, i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.trace_event_call*, %struct.trace_event_call** %6, align 8
  %32 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.trace_event_call* @trace_probe_event_call(%struct.trace_probe*) #1

declare dso_local i32 @__set_print_fmt(%struct.trace_probe*, i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
