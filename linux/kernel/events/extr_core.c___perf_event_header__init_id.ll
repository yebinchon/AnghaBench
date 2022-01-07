; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_header__init_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_event_header__init_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_header = type { i32 }
%struct.perf_sample_data = type { i32, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.perf_event = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_IDENTIFIER = common dso_local global i32 0, align 4
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*)* @__perf_event_header__init_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_header__init_id(%struct.perf_event_header* %0, %struct.perf_sample_data* %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.perf_event_header*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event_header* %0, %struct.perf_event_header** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.perf_event* %2, %struct.perf_event** %6, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %14 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.perf_event_header*, %struct.perf_event_header** %4, align 8
  %19 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %30 = load i32, i32* @current, align 4
  %31 = call i32 @perf_event_pid(%struct.perf_event* %29, i32 %30)
  %32 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %33 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %36 = load i32, i32* @current, align 4
  %37 = call i32 @perf_event_tid(%struct.perf_event* %35, i32 %36)
  %38 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %39 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %28, %3
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %48 = call i32 @perf_event_clock(%struct.perf_event* %47)
  %49 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %50 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %54 = load i32, i32* @PERF_SAMPLE_IDENTIFIER, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %60 = call i32 @primary_event_id(%struct.perf_event* %59)
  %61 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %62 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %73 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = call i32 (...) @raw_smp_processor_id()
  %81 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %82 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %85 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %79, %74
  ret void
}

declare dso_local i32 @perf_event_pid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_tid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_clock(%struct.perf_event*) #1

declare dso_local i32 @primary_event_id(%struct.perf_event*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
