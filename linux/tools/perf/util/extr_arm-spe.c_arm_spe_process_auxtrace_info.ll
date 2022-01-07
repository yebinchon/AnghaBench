; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe.c_arm_spe_process_auxtrace_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe.c_arm_spe_process_auxtrace_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.perf_record_auxtrace_info }
%struct.perf_record_auxtrace_info = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.perf_session = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.arm_spe = type { %struct.TYPE_6__, i32, i32, i32*, %struct.perf_session*, i32 }

@ARM_SPE_PMU_TYPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arm_spe_process_event = common dso_local global i32 0, align 4
@arm_spe_process_auxtrace_event = common dso_local global i32 0, align 4
@arm_spe_flush = common dso_local global i32 0, align 4
@arm_spe_free_events = common dso_local global i32 0, align 4
@arm_spe_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_spe_process_auxtrace_info(%union.perf_event* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.perf_record_auxtrace_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.arm_spe*, align 8
  %9 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %10 = load %union.perf_event*, %union.perf_event** %4, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.perf_record_auxtrace_info*
  store %struct.perf_record_auxtrace_info* %11, %struct.perf_record_auxtrace_info** %6, align 8
  %12 = load i32, i32* @ARM_SPE_PMU_TYPE, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %16 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = add i64 16, %20
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %96

26:                                               ; preds = %2
  %27 = call %struct.arm_spe* @zalloc(i32 56)
  store %struct.arm_spe* %27, %struct.arm_spe** %8, align 8
  %28 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %29 = icmp ne %struct.arm_spe* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %26
  %34 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %35 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %34, i32 0, i32 5
  %36 = call i32 @auxtrace_queues__init(i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %92

40:                                               ; preds = %33
  %41 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %42 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %43 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %42, i32 0, i32 4
  store %struct.perf_session* %41, %struct.perf_session** %43, align 8
  %44 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %45 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %48 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %50 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %53 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %55 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @ARM_SPE_PMU_TYPE, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %62 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @arm_spe_process_event, align 4
  %64 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %65 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @arm_spe_process_auxtrace_event, align 4
  %68 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %69 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @arm_spe_flush, align 4
  %72 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %73 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* @arm_spe_free_events, align 4
  %76 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %77 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @arm_spe_free, align 4
  %80 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %81 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %84 = getelementptr inbounds %struct.arm_spe, %struct.arm_spe* %83, i32 0, i32 0
  %85 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %86 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %85, i32 0, i32 0
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %86, align 8
  %87 = load %struct.perf_record_auxtrace_info*, %struct.perf_record_auxtrace_info** %6, align 8
  %88 = getelementptr inbounds %struct.perf_record_auxtrace_info, %struct.perf_record_auxtrace_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = call i32 @arm_spe_print_info(i32* %90)
  store i32 0, i32* %3, align 4
  br label %96

92:                                               ; preds = %39
  %93 = load %struct.arm_spe*, %struct.arm_spe** %8, align 8
  %94 = call i32 @free(%struct.arm_spe* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %40, %30, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.arm_spe* @zalloc(i32) #1

declare dso_local i32 @auxtrace_queues__init(i32*) #1

declare dso_local i32 @arm_spe_print_info(i32*) #1

declare dso_local i32 @free(%struct.arm_spe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
