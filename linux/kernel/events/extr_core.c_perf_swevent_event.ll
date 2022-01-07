; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_swevent_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_swevent_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, %struct.hw_perf_event, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hw_perf_event = type { i32, i32, i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32, %struct.perf_sample_data*, %struct.pt_regs*)* @perf_swevent_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_swevent_event(%struct.perf_event* %0, i32 %1, %struct.perf_sample_data* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_sample_data*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_sample_data* %2, %struct.perf_sample_data** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 2
  %15 = call i32 @local64_add(i32 %12, i32* %14)
  %16 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %17 = icmp ne %struct.pt_regs* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %81

19:                                               ; preds = %4
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = call i32 @is_sampling_event(%struct.perf_event* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %81

24:                                               ; preds = %19
  %25 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %41 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %43 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  call void @perf_swevent_overflow(%struct.perf_event* %42, i32 1, %struct.perf_sample_data* %43, %struct.pt_regs* %44)
  br label %81

45:                                               ; preds = %32, %24
  %46 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %51 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %62 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %68 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %69 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  call void @perf_swevent_overflow(%struct.perf_event* %67, i32 1, %struct.perf_sample_data* %68, %struct.pt_regs* %69)
  br label %81

70:                                               ; preds = %60, %55, %52
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %73 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %72, i32 0, i32 2
  %74 = call i64 @local64_add_negative(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %81

77:                                               ; preds = %70
  %78 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %79 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %80 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  call void @perf_swevent_overflow(%struct.perf_event* %78, i32 0, %struct.perf_sample_data* %79, %struct.pt_regs* %80)
  br label %81

81:                                               ; preds = %77, %76, %66, %38, %23, %18
  ret void
}

declare dso_local i32 @local64_add(i32, i32*) #1

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local void @perf_swevent_overflow(%struct.perf_event*, i32, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i64 @local64_add_negative(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
