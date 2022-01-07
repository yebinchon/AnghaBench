; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_set_output.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i64, i64, i64, i32, i32 }
%struct.ring_buffer = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.perf_event*)* @perf_event_set_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_set_output(%struct.perf_event* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  store %struct.ring_buffer* null, %struct.ring_buffer** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = icmp ne %struct.perf_event* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %74

12:                                               ; preds = %2
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %15 = icmp eq %struct.perf_event* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %101

17:                                               ; preds = %12
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %101

26:                                               ; preds = %17
  %27 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %101

40:                                               ; preds = %31, %26
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %101

49:                                               ; preds = %40
  %50 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %51 = call i64 @is_write_backward(%struct.perf_event* %50)
  %52 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %53 = call i64 @is_write_backward(%struct.perf_event* %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %101

56:                                               ; preds = %49
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = call i64 @has_aux(%struct.perf_event* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %62 = call i64 @has_aux(%struct.perf_event* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %66 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %101

73:                                               ; preds = %64, %60, %56
  br label %74

74:                                               ; preds = %73, %11
  %75 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %76 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %75, i32 0, i32 4
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %79 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %78, i32 0, i32 5
  %80 = call i64 @atomic_read(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %97

83:                                               ; preds = %74
  %84 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %85 = icmp ne %struct.perf_event* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %88 = call %struct.ring_buffer* @ring_buffer_get(%struct.perf_event* %87)
  store %struct.ring_buffer* %88, %struct.ring_buffer** %5, align 8
  %89 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %90 = icmp ne %struct.ring_buffer* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %83
  %94 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %95 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %96 = call i32 @ring_buffer_attach(%struct.perf_event* %94, %struct.ring_buffer* %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %91, %82
  %98 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %99 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %98, i32 0, i32 4
  %100 = call i32 @mutex_unlock(i32* %99)
  br label %101

101:                                              ; preds = %97, %72, %55, %48, %39, %25, %16
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @is_write_backward(%struct.perf_event*) #1

declare dso_local i64 @has_aux(%struct.perf_event*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.ring_buffer* @ring_buffer_get(%struct.perf_event*) #1

declare dso_local i32 @ring_buffer_attach(%struct.perf_event*, %struct.ring_buffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
