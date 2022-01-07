; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_task_output.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_task_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event = type { i32 }
%struct.perf_task_event = type { %struct.TYPE_3__, %struct.task_struct* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i8*)* @perf_event_task_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_task_output(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_task_event*, align 8
  %6 = alloca %struct.perf_output_handle, align 4
  %7 = alloca %struct.perf_sample_data, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.perf_task_event*
  store %struct.perf_task_event* %12, %struct.perf_task_event** %5, align 8
  %13 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %13, i32 0, i32 1
  %15 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  store %struct.task_struct* %15, %struct.task_struct** %8, align 8
  %16 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = call i32 @perf_event_task_match(%struct.perf_event* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %83

25:                                               ; preds = %2
  %26 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %27 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = call i32 @perf_event_header__init_id(%struct.TYPE_4__* %28, %struct.perf_sample_data* %7, %struct.perf_event* %29)
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %33 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @perf_output_begin(%struct.perf_output_handle* %6, %struct.perf_event* %31, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %77

41:                                               ; preds = %25
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %44 = call i8* @perf_event_pid(%struct.perf_event* %42, %struct.task_struct* %43)
  %45 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %46 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  store i8* %44, i8** %47, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %50 = call i8* @perf_event_pid(%struct.perf_event* %48, %struct.task_struct* %49)
  %51 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %52 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i8* %50, i8** %53, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %56 = call i8* @perf_event_tid(%struct.perf_event* %54, %struct.task_struct* %55)
  %57 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %58 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i8* %56, i8** %59, align 8
  %60 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %61 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %62 = call i8* @perf_event_tid(%struct.perf_event* %60, %struct.task_struct* %61)
  %63 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %64 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %67 = call i32 @perf_event_clock(%struct.perf_event* %66)
  %68 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %69 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %72 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %71, i32 0, i32 0
  %73 = call i32 @perf_output_put(%struct.perf_output_handle* %6, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %72)
  %74 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %75 = call i32 @perf_event__output_id_sample(%struct.perf_event* %74, %struct.perf_output_handle* %6, %struct.perf_sample_data* %7)
  %76 = call i32 @perf_output_end(%struct.perf_output_handle* %6)
  br label %77

77:                                               ; preds = %41, %40
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.perf_task_event*, %struct.perf_task_event** %5, align 8
  %80 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  br label %83

83:                                               ; preds = %77, %24
  ret void
}

declare dso_local i32 @perf_event_task_match(%struct.perf_event*) #1

declare dso_local i32 @perf_event_header__init_id(%struct.TYPE_4__*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i8* @perf_event_pid(%struct.perf_event*, %struct.task_struct*) #1

declare dso_local i8* @perf_event_tid(%struct.perf_event*, %struct.task_struct*) #1

declare dso_local i32 @perf_event_clock(%struct.perf_event*) #1

declare dso_local i32 @perf_output_put(%struct.perf_output_handle*, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i32 @perf_event__output_id_sample(%struct.perf_event*, %struct.perf_output_handle*, %struct.perf_sample_data*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
