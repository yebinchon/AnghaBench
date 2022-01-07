; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_read_local.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_read_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i64, i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.perf_event*)* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@PERF_ATTACH_TASK = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event_read_local(%struct.perf_event* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  br label %118

24:                                               ; preds = %4
  %25 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @current, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %118

41:                                               ; preds = %31, %24
  %42 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PERF_ATTACH_TASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 (...) @smp_processor_id()
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %118

57:                                               ; preds = %48, %41
  %58 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i64 (...) @smp_processor_id()
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %118

72:                                               ; preds = %63, %57
  %73 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %74 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i64 (...) @smp_processor_id()
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %80 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %79, i32 0, i32 5
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %82, align 8
  %84 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %85 = call i32 %83(%struct.perf_event* %84)
  br label %86

86:                                               ; preds = %78, %72
  %87 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %88 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %87, i32 0, i32 4
  %89 = call i64 @local64_read(i32* %88)
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load i64*, i64** %8, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %96, label %117

96:                                               ; preds = %93, %86
  %97 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %98 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i64 (...) @perf_clock()
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* %11, align 8
  %102 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @__perf_update_times(%struct.perf_event* %102, i64 %103, i64* %12, i64* %13)
  %105 = load i64*, i64** %7, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = load i64, i64* %12, align 8
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %96
  %111 = load i64*, i64** %8, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64, i64* %13, align 8
  %115 = load i64*, i64** %8, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %117, %69, %54, %38, %21
  %119 = load i64, i64* %9, align 8
  %120 = call i32 @local_irq_restore(i64 %119)
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @perf_clock(...) #1

declare dso_local i32 @__perf_update_times(%struct.perf_event*, i64, i64*, i64*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
