; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_set_tracer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_set_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracer = type { i32, i64, i64, i32 (%struct.trace_array.0*)*, i64, i32, i64, %struct.tracer* }
%struct.trace_array.0 = type opaque
%struct.trace_array = type { i32, %struct.tracer*, i32, i64 }

@trace_types_lock = common dso_local global i32 0, align 4
@ring_buffer_expanded = common dso_local global i32 0, align 4
@trace_buf_size = common dso_local global i32 0, align 4
@RING_BUFFER_ALL_CPUS = common dso_local global i32 0, align 4
@trace_types = common dso_local global %struct.tracer* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Tracer '%s' is not allowed on command line, ignored\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@nop_trace = common dso_local global %struct.tracer zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i8*)* @tracing_set_tracer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_set_tracer(%struct.trace_array* %0, i8* %1) #0 {
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tracer*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @mutex_lock(i32* @trace_types_lock)
  %8 = load i32, i32* @ring_buffer_expanded, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %12 = load i32, i32* @trace_buf_size, align 4
  %13 = load i32, i32* @RING_BUFFER_ALL_CPUS, align 4
  %14 = call i32 @__tracing_resize_ring_buffer(%struct.trace_array* %11, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %132

18:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.tracer*, %struct.tracer** @trace_types, align 8
  store %struct.tracer* %20, %struct.tracer** %5, align 8
  br label %21

21:                                               ; preds = %33, %19
  %22 = load %struct.tracer*, %struct.tracer** %5, align 8
  %23 = icmp ne %struct.tracer* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.tracer*, %struct.tracer** %5, align 8
  %26 = getelementptr inbounds %struct.tracer, %struct.tracer* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strcmp(i32 %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %37

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.tracer*, %struct.tracer** %5, align 8
  %35 = getelementptr inbounds %struct.tracer, %struct.tracer* %34, i32 0, i32 7
  %36 = load %struct.tracer*, %struct.tracer** %35, align 8
  store %struct.tracer* %36, %struct.tracer** %5, align 8
  br label %21

37:                                               ; preds = %31, %21
  %38 = load %struct.tracer*, %struct.tracer** %5, align 8
  %39 = icmp ne %struct.tracer* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %132

43:                                               ; preds = %37
  %44 = load %struct.tracer*, %struct.tracer** %5, align 8
  %45 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %46 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %45, i32 0, i32 1
  %47 = load %struct.tracer*, %struct.tracer** %46, align 8
  %48 = icmp eq %struct.tracer* %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %132

50:                                               ; preds = %43
  %51 = load i64, i64* @system_state, align 8
  %52 = load i64, i64* @SYSTEM_RUNNING, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.tracer*, %struct.tracer** %5, align 8
  %56 = getelementptr inbounds %struct.tracer, %struct.tracer* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.tracer*, %struct.tracer** %5, align 8
  %61 = getelementptr inbounds %struct.tracer, %struct.tracer* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %132

64:                                               ; preds = %54, %50
  %65 = load %struct.tracer*, %struct.tracer** %5, align 8
  %66 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %67 = call i32 @trace_ok_for_array(%struct.tracer* %65, %struct.trace_array* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %132

72:                                               ; preds = %64
  %73 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %74 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %73, i32 0, i32 1
  %75 = load %struct.tracer*, %struct.tracer** %74, align 8
  %76 = getelementptr inbounds %struct.tracer, %struct.tracer* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %132

82:                                               ; preds = %72
  %83 = call i32 (...) @trace_branch_disable()
  %84 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %85 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %84, i32 0, i32 1
  %86 = load %struct.tracer*, %struct.tracer** %85, align 8
  %87 = getelementptr inbounds %struct.tracer, %struct.tracer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %91 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %90, i32 0, i32 1
  %92 = load %struct.tracer*, %struct.tracer** %91, align 8
  %93 = getelementptr inbounds %struct.tracer, %struct.tracer* %92, i32 0, i32 3
  %94 = load i32 (%struct.trace_array.0*)*, i32 (%struct.trace_array.0*)** %93, align 8
  %95 = icmp ne i32 (%struct.trace_array.0*)* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %82
  %97 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %98 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %97, i32 0, i32 1
  %99 = load %struct.tracer*, %struct.tracer** %98, align 8
  %100 = getelementptr inbounds %struct.tracer, %struct.tracer* %99, i32 0, i32 3
  %101 = load i32 (%struct.trace_array.0*)*, i32 (%struct.trace_array.0*)** %100, align 8
  %102 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %103 = bitcast %struct.trace_array* %102 to %struct.trace_array.0*
  %104 = call i32 %101(%struct.trace_array.0* %103)
  br label %105

105:                                              ; preds = %96, %82
  %106 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %107 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %106, i32 0, i32 1
  store %struct.tracer* @nop_trace, %struct.tracer** %107, align 8
  %108 = load %struct.tracer*, %struct.tracer** %5, align 8
  %109 = getelementptr inbounds %struct.tracer, %struct.tracer* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load %struct.tracer*, %struct.tracer** %5, align 8
  %114 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %115 = call i32 @tracer_init(%struct.tracer* %113, %struct.trace_array* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %132

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %105
  %121 = load %struct.tracer*, %struct.tracer** %5, align 8
  %122 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %123 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %122, i32 0, i32 1
  store %struct.tracer* %121, %struct.tracer** %123, align 8
  %124 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %125 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %124, i32 0, i32 1
  %126 = load %struct.tracer*, %struct.tracer** %125, align 8
  %127 = getelementptr inbounds %struct.tracer, %struct.tracer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %131 = call i32 @trace_branch_enable(%struct.trace_array* %130)
  br label %132

132:                                              ; preds = %120, %118, %79, %69, %59, %49, %40, %17
  %133 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__tracing_resize_ring_buffer(%struct.trace_array*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @trace_ok_for_array(%struct.tracer*, %struct.trace_array*) #1

declare dso_local i32 @trace_branch_disable(...) #1

declare dso_local i32 @tracer_init(%struct.tracer*, %struct.trace_array*) #1

declare dso_local i32 @trace_branch_enable(%struct.trace_array*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
