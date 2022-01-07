; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_aux_output_begin.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_perf_aux_output_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i64, %struct.perf_event*, %struct.ring_buffer*, i32, i64, i64 }
%struct.ring_buffer = type { i64, i8*, i32, i64, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32, %struct.perf_event* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @perf_aux_output_begin(%struct.perf_output_handle* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_output_handle*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ring_buffer*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  store %struct.perf_event* %11, %struct.perf_event** %6, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = load %struct.perf_event*, %struct.perf_event** %13, align 8
  %15 = icmp ne %struct.perf_event* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 1
  %19 = load %struct.perf_event*, %struct.perf_event** %18, align 8
  store %struct.perf_event* %19, %struct.perf_event** %6, align 8
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %22 = call %struct.ring_buffer* @ring_buffer_get(%struct.perf_event* %21)
  store %struct.ring_buffer* %22, %struct.ring_buffer** %9, align 8
  %23 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %24 = icmp ne %struct.ring_buffer* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %141

26:                                               ; preds = %20
  %27 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %28 = call i32 @rb_has_aux(%struct.ring_buffer* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %136

31:                                               ; preds = %26
  %32 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %33 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %32, i32 0, i32 8
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %136

37:                                               ; preds = %31
  %38 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %39 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %38, i32 0, i32 7
  %40 = call i32 @refcount_inc_not_zero(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %136

43:                                               ; preds = %37
  %44 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %45 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @READ_ONCE(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @WARN_ON_ONCE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %133

53:                                               ; preds = %43
  %54 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %55 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  %59 = call i32 @WRITE_ONCE(i32 %56, i32 %58)
  %60 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %61 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  %63 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %64 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %65 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %64, i32 0, i32 2
  store %struct.ring_buffer* %63, %struct.ring_buffer** %65, align 8
  %66 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %67 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %68 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %67, i32 0, i32 1
  store %struct.perf_event* %66, %struct.perf_event** %68, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %71 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %73 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %72, i32 0, i32 3
  store i32 0, i32* %73, align 8
  %74 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %75 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %77 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %127, label %80

80:                                               ; preds = %53
  %81 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %82 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %81, i32 0, i32 5
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @READ_ONCE(i32 %85)
  %87 = ptrtoint i8* %86 to i64
  store i64 %87, i64* %8, align 8
  %88 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %89 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %92 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %96 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub i64 %97, %98
  %100 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %101 = call i64 @perf_aux_size(%struct.ring_buffer* %100)
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %80
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %107 = call i64 @perf_aux_size(%struct.ring_buffer* %106)
  %108 = call i32 @CIRC_SPACE(i64 %104, i64 %105, i64 %107)
  %109 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %110 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %103, %80
  %112 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %113 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %111
  %117 = call i32 (...) @smp_processor_id()
  %118 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %119 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %121 = call i32 @perf_output_wakeup(%struct.perf_output_handle* %120)
  %122 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %123 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @WRITE_ONCE(i32 %124, i32 0)
  br label %133

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126, %53
  %128 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %129 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %128, i32 0, i32 2
  %130 = load %struct.ring_buffer*, %struct.ring_buffer** %129, align 8
  %131 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %3, align 8
  br label %141

133:                                              ; preds = %116, %52
  %134 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %135 = call i32 @rb_free_aux(%struct.ring_buffer* %134)
  br label %136

136:                                              ; preds = %133, %42, %36, %30
  %137 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %138 = call i32 @ring_buffer_put(%struct.ring_buffer* %137)
  %139 = load %struct.perf_output_handle*, %struct.perf_output_handle** %4, align 8
  %140 = getelementptr inbounds %struct.perf_output_handle, %struct.perf_output_handle* %139, i32 0, i32 1
  store %struct.perf_event* null, %struct.perf_event** %140, align 8
  store i8* null, i8** %3, align 8
  br label %141

141:                                              ; preds = %136, %127, %25
  %142 = load i8*, i8** %3, align 8
  ret i8* %142
}

declare dso_local %struct.ring_buffer* @ring_buffer_get(%struct.perf_event*) #1

declare dso_local i32 @rb_has_aux(%struct.ring_buffer*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @perf_aux_size(%struct.ring_buffer*) #1

declare dso_local i32 @CIRC_SPACE(i64, i64, i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @perf_output_wakeup(%struct.perf_output_handle*) #1

declare dso_local i32 @rb_free_aux(%struct.ring_buffer*) #1

declare dso_local i32 @ring_buffer_put(%struct.ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
