; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_compare_arg_type.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_compare_arg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_probe_compare_arg_type(%struct.trace_probe* %0, %struct.trace_probe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_probe*, align 8
  %5 = alloca %struct.trace_probe*, align 8
  %6 = alloca i32, align 4
  store %struct.trace_probe* %0, %struct.trace_probe** %4, align 8
  store %struct.trace_probe* %1, %struct.trace_probe** %5, align 8
  %7 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %8 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %11 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %16 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %108

19:                                               ; preds = %2
  %20 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %21 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %24 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %29 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %108

32:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %104, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %36 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %107

39:                                               ; preds = %33
  %40 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %41 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %100, label %45

45:                                               ; preds = %39
  %46 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %47 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %55 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %53, %61
  br i1 %62, label %100, label %63

63:                                               ; preds = %45
  %64 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %65 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %73 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %71, %79
  br i1 %80, label %100, label %81

81:                                               ; preds = %63
  %82 = load %struct.trace_probe*, %struct.trace_probe** %4, align 8
  %83 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %91 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @strcmp(i32 %89, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %81, %63, %45, %39
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %108

103:                                              ; preds = %81
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %33

107:                                              ; preds = %33
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %100, %27, %14
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
