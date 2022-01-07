; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_clear_probe_trace_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_clear_probe_trace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_event = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.probe_trace_arg_ref*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.probe_trace_arg_ref = type { %struct.probe_trace_arg_ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_probe_trace_event(%struct.probe_trace_event* %0) #0 {
  %2 = alloca %struct.probe_trace_event*, align 8
  %3 = alloca %struct.probe_trace_arg_ref*, align 8
  %4 = alloca %struct.probe_trace_arg_ref*, align 8
  %5 = alloca i32, align 4
  store %struct.probe_trace_event* %0, %struct.probe_trace_event** %2, align 8
  %6 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %7 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %6, i32 0, i32 4
  %8 = call i32 @zfree(%struct.TYPE_4__** %7)
  %9 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %10 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %9, i32 0, i32 3
  %11 = call i32 @zfree(%struct.TYPE_4__** %10)
  %12 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %13 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = call i32 @zfree(%struct.TYPE_4__** %14)
  %16 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %17 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @zfree(%struct.TYPE_4__** %18)
  %20 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %21 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @zfree(%struct.TYPE_4__** %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %74, %1
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %27 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %24
  %31 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %32 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = call i32 @zfree(%struct.TYPE_4__** %37)
  %39 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %40 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = call i32 @zfree(%struct.TYPE_4__** %45)
  %47 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %48 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @zfree(%struct.TYPE_4__** %53)
  %55 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %56 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %61, align 8
  store %struct.probe_trace_arg_ref* %62, %struct.probe_trace_arg_ref** %3, align 8
  br label %63

63:                                               ; preds = %66, %30
  %64 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %3, align 8
  %65 = icmp ne %struct.probe_trace_arg_ref* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %3, align 8
  %68 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %67, i32 0, i32 0
  %69 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %68, align 8
  store %struct.probe_trace_arg_ref* %69, %struct.probe_trace_arg_ref** %4, align 8
  %70 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %3, align 8
  %71 = call i32 @free(%struct.probe_trace_arg_ref* %70)
  %72 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %4, align 8
  store %struct.probe_trace_arg_ref* %72, %struct.probe_trace_arg_ref** %3, align 8
  br label %63

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %24

77:                                               ; preds = %24
  %78 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %79 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %78, i32 0, i32 1
  %80 = call i32 @zfree(%struct.TYPE_4__** %79)
  %81 = load %struct.probe_trace_event*, %struct.probe_trace_event** %2, align 8
  %82 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  ret void
}

declare dso_local i32 @zfree(%struct.TYPE_4__**) #1

declare dso_local i32 @free(%struct.probe_trace_arg_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
