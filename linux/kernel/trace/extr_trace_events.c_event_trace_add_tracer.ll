; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_trace_add_tracer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_event_trace_add_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.trace_array = type { i32 }

@event_mutex = common dso_local global i32 0, align 4
@trace_event_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_trace_add_tracer(%struct.dentry* %0, %struct.trace_array* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.trace_array* %1, %struct.trace_array** %4, align 8
  %6 = call i32 @lockdep_assert_held(i32* @event_mutex)
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %9 = call i32 @create_event_toplevel_files(%struct.dentry* %7, %struct.trace_array* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %18

13:                                               ; preds = %2
  %14 = call i32 @down_write(i32* @trace_event_sem)
  %15 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %16 = call i32 @__trace_add_event_dirs(%struct.trace_array* %15)
  %17 = call i32 @up_write(i32* @trace_event_sem)
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @create_event_toplevel_files(%struct.dentry*, %struct.trace_array*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__trace_add_event_dirs(%struct.trace_array*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
