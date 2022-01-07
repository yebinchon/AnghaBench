; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___put_system_dir.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c___put_system_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_subsystem_dir = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_subsystem_dir*)* @__put_system_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__put_system_dir(%struct.trace_subsystem_dir* %0) #0 {
  %2 = alloca %struct.trace_subsystem_dir*, align 8
  store %struct.trace_subsystem_dir* %0, %struct.trace_subsystem_dir** %2, align 8
  %3 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %2, align 8
  %4 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %2, align 8
  %10 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @system_refcount(i32 %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %2, align 8
  %16 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %2, align 8
  %24 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__put_system(i32 %25)
  %27 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %2, align 8
  %28 = getelementptr inbounds %struct.trace_subsystem_dir, %struct.trace_subsystem_dir* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load %struct.trace_subsystem_dir*, %struct.trace_subsystem_dir** %2, align 8
  %34 = call i32 @kfree(%struct.trace_subsystem_dir* %33)
  br label %35

35:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @system_refcount(i32) #1

declare dso_local i32 @__put_system(i32) #1

declare dso_local i32 @kfree(%struct.trace_subsystem_dir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
