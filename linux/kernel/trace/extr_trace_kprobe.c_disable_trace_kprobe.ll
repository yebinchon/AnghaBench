; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_disable_trace_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_disable_trace_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_event_file = type { i32 }
%struct.trace_probe = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TP_FLAG_TRACE = common dso_local global i32 0, align 4
@TP_FLAG_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_call*, %struct.trace_event_file*)* @disable_trace_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disable_trace_kprobe(%struct.trace_event_call* %0, %struct.trace_event_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca %struct.trace_event_file*, align 8
  %6 = alloca %struct.trace_probe*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %4, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %5, align 8
  %7 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %8 = call %struct.trace_probe* @trace_probe_primary_from_call(%struct.trace_event_call* %7)
  store %struct.trace_probe* %8, %struct.trace_probe** %6, align 8
  %9 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %10 = icmp ne %struct.trace_probe* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %20 = icmp ne %struct.trace_event_file* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %23 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %24 = call i32 @trace_probe_get_file_link(%struct.trace_probe* %22, %struct.trace_event_file* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %31 = call i32 @trace_probe_has_single_file(%struct.trace_probe* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %50

34:                                               ; preds = %29
  %35 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %36 = load i32, i32* @TP_FLAG_TRACE, align 4
  %37 = call i32 @trace_probe_clear_flag(%struct.trace_probe* %35, i32 %36)
  br label %42

38:                                               ; preds = %18
  %39 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %40 = load i32, i32* @TP_FLAG_PROFILE, align 4
  %41 = call i32 @trace_probe_clear_flag(%struct.trace_probe* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %44 = call i32 @trace_probe_is_enabled(%struct.trace_probe* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %48 = call i32 @__disable_trace_kprobe(%struct.trace_probe* %47)
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %52 = icmp ne %struct.trace_event_file* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %55 = load %struct.trace_event_file*, %struct.trace_event_file** %5, align 8
  %56 = call i32 @trace_probe_remove_file(%struct.trace_probe* %54, %struct.trace_event_file* %55)
  br label %57

57:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %26, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.trace_probe* @trace_probe_primary_from_call(%struct.trace_event_call*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_probe_get_file_link(%struct.trace_probe*, %struct.trace_event_file*) #1

declare dso_local i32 @trace_probe_has_single_file(%struct.trace_probe*) #1

declare dso_local i32 @trace_probe_clear_flag(%struct.trace_probe*, i32) #1

declare dso_local i32 @trace_probe_is_enabled(%struct.trace_probe*) #1

declare dso_local i32 @__disable_trace_kprobe(%struct.trace_probe*) #1

declare dso_local i32 @trace_probe_remove_file(%struct.trace_probe*, %struct.trace_event_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
