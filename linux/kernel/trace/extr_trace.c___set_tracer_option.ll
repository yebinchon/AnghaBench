; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___set_tracer_option.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___set_tracer_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.tracer_flags = type { i32, %struct.tracer* }
%struct.tracer = type { i32 (%struct.trace_array.0*, i32, i32, i32)* }
%struct.trace_array.0 = type opaque
%struct.tracer_opt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, %struct.tracer_flags*, %struct.tracer_opt*, i32)* @__set_tracer_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_tracer_option(%struct.trace_array* %0, %struct.tracer_flags* %1, %struct.tracer_opt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.tracer_flags*, align 8
  %8 = alloca %struct.tracer_opt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tracer*, align 8
  %11 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %6, align 8
  store %struct.tracer_flags* %1, %struct.tracer_flags** %7, align 8
  store %struct.tracer_opt* %2, %struct.tracer_opt** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %13 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %12, i32 0, i32 1
  %14 = load %struct.tracer*, %struct.tracer** %13, align 8
  store %struct.tracer* %14, %struct.tracer** %10, align 8
  %15 = load %struct.tracer*, %struct.tracer** %10, align 8
  %16 = getelementptr inbounds %struct.tracer, %struct.tracer* %15, i32 0, i32 0
  %17 = load i32 (%struct.trace_array.0*, i32, i32, i32)*, i32 (%struct.trace_array.0*, i32, i32, i32)** %16, align 8
  %18 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %19 = bitcast %struct.trace_array* %18 to %struct.trace_array.0*
  %20 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %21 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tracer_opt*, %struct.tracer_opt** %8, align 8
  %24 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 %17(%struct.trace_array.0* %19, i32 %22, i32 %25, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %56

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.tracer_opt*, %struct.tracer_opt** %8, align 8
  %40 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %44 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %55

47:                                               ; preds = %35
  %48 = load %struct.tracer_opt*, %struct.tracer_opt** %8, align 8
  %49 = getelementptr inbounds %struct.tracer_opt, %struct.tracer_opt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tracer_flags*, %struct.tracer_flags** %7, align 8
  %52 = getelementptr inbounds %struct.tracer_flags, %struct.tracer_flags* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %47, %38
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
