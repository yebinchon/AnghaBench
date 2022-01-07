; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_env__get_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_perf_env__get_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i32 }
%struct.perf_cpu_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_env*, %struct.perf_cpu_map*, i32)* @perf_env__get_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_env__get_cpu(%struct.perf_env* %0, %struct.perf_cpu_map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_env*, align 8
  %6 = alloca %struct.perf_cpu_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_env* %0, %struct.perf_env** %5, align 8
  store %struct.perf_cpu_map* %1, %struct.perf_cpu_map** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %6, align 8
  %11 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %6, align 8
  %17 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.perf_env*, %struct.perf_env** %5, align 8
  %25 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %31

29:                                               ; preds = %15
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %28, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
