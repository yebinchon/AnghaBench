; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_try_init_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_try_init_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i64, i32 (%struct.perf_event*)*, i32, i32 }
%struct.perf_event = type opaque
%struct.perf_event.0 = type { i32 (%struct.perf_event.0*)*, %struct.perf_event.0*, %struct.pmu* }
%struct.perf_event_context = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@perf_sw_context = common dso_local global i64 0, align 8
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@PERF_PMU_CAP_EXTENDED_REGS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PERF_PMU_CAP_NO_EXCLUDE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu*, %struct.perf_event.0*)* @perf_try_init_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_try_init_event(%struct.pmu* %0, %struct.perf_event.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu*, align 8
  %5 = alloca %struct.perf_event.0*, align 8
  %6 = alloca %struct.perf_event_context*, align 8
  %7 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %4, align 8
  store %struct.perf_event.0* %1, %struct.perf_event.0** %5, align 8
  store %struct.perf_event_context* null, %struct.perf_event_context** %6, align 8
  %8 = load %struct.pmu*, %struct.pmu** %4, align 8
  %9 = getelementptr inbounds %struct.pmu, %struct.pmu* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @try_module_get(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %113

16:                                               ; preds = %2
  %17 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %18 = getelementptr inbounds %struct.perf_event.0, %struct.perf_event.0* %17, i32 0, i32 1
  %19 = load %struct.perf_event.0*, %struct.perf_event.0** %18, align 8
  %20 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %21 = icmp ne %struct.perf_event.0* %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.pmu*, %struct.pmu** %4, align 8
  %24 = getelementptr inbounds %struct.pmu, %struct.pmu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @perf_sw_context, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %30 = getelementptr inbounds %struct.perf_event.0, %struct.perf_event.0* %29, i32 0, i32 1
  %31 = load %struct.perf_event.0*, %struct.perf_event.0** %30, align 8
  %32 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %33 = call %struct.perf_event_context* @perf_event_ctx_lock_nested(%struct.perf_event.0* %31, i32 %32)
  store %struct.perf_event_context* %33, %struct.perf_event_context** %6, align 8
  %34 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %35 = icmp ne %struct.perf_event_context* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  br label %39

39:                                               ; preds = %28, %22, %16
  %40 = load %struct.pmu*, %struct.pmu** %4, align 8
  %41 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %42 = getelementptr inbounds %struct.perf_event.0, %struct.perf_event.0* %41, i32 0, i32 2
  store %struct.pmu* %40, %struct.pmu** %42, align 8
  %43 = load %struct.pmu*, %struct.pmu** %4, align 8
  %44 = getelementptr inbounds %struct.pmu, %struct.pmu* %43, i32 0, i32 1
  %45 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %44, align 8
  %46 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %47 = bitcast %struct.perf_event.0* %46 to %struct.perf_event*
  %48 = call i32 %45(%struct.perf_event* %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %50 = icmp ne %struct.perf_event_context* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %53 = getelementptr inbounds %struct.perf_event.0, %struct.perf_event.0* %52, i32 0, i32 1
  %54 = load %struct.perf_event.0*, %struct.perf_event.0** %53, align 8
  %55 = load %struct.perf_event_context*, %struct.perf_event_context** %6, align 8
  %56 = call i32 @perf_event_ctx_unlock(%struct.perf_event.0* %54, %struct.perf_event_context* %55)
  br label %57

57:                                               ; preds = %51, %39
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %57
  %61 = load %struct.pmu*, %struct.pmu** %4, align 8
  %62 = getelementptr inbounds %struct.pmu, %struct.pmu* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PERF_PMU_CAP_EXTENDED_REGS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %69 = call i64 @has_extended_regs(%struct.perf_event.0* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %67, %60
  %75 = load %struct.pmu*, %struct.pmu** %4, align 8
  %76 = getelementptr inbounds %struct.pmu, %struct.pmu* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PERF_PMU_CAP_NO_EXCLUDE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %83 = call i64 @event_has_any_exclude_flag(%struct.perf_event.0* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %81, %74
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %93 = getelementptr inbounds %struct.perf_event.0, %struct.perf_event.0* %92, i32 0, i32 0
  %94 = load i32 (%struct.perf_event.0*)*, i32 (%struct.perf_event.0*)** %93, align 8
  %95 = icmp ne i32 (%struct.perf_event.0*)* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %98 = getelementptr inbounds %struct.perf_event.0, %struct.perf_event.0* %97, i32 0, i32 0
  %99 = load i32 (%struct.perf_event.0*)*, i32 (%struct.perf_event.0*)** %98, align 8
  %100 = load %struct.perf_event.0*, %struct.perf_event.0** %5, align 8
  %101 = call i32 %99(%struct.perf_event.0* %100)
  br label %102

102:                                              ; preds = %96, %91, %88
  br label %103

103:                                              ; preds = %102, %57
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.pmu*, %struct.pmu** %4, align 8
  %108 = getelementptr inbounds %struct.pmu, %struct.pmu* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @module_put(i32 %109)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %13
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.perf_event_context* @perf_event_ctx_lock_nested(%struct.perf_event.0*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @perf_event_ctx_unlock(%struct.perf_event.0*, %struct.perf_event_context*) #1

declare dso_local i64 @has_extended_regs(%struct.perf_event.0*) #1

declare dso_local i64 @event_has_any_exclude_flag(%struct.perf_event.0*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
