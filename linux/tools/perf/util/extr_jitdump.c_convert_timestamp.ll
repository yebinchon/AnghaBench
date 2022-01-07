; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_convert_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_convert_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_buf_desc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.perf_tsc_conversion = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_buf_desc*, i32)* @convert_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_timestamp(%struct.jit_buf_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jit_buf_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_tsc_conversion, align 4
  store %struct.jit_buf_desc* %0, %struct.jit_buf_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %4, align 8
  %8 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %4, align 8
  %15 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %4, align 8
  %22 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %4, align 8
  %29 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.perf_tsc_conversion, %struct.perf_tsc_conversion* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %42

39:                                               ; preds = %13
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @tsc_to_perf_time(i32 %40, %struct.perf_tsc_conversion* %6)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %38, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @tsc_to_perf_time(i32, %struct.perf_tsc_conversion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
