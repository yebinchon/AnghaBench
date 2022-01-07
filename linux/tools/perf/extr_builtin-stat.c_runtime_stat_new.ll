; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_runtime_stat_new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_runtime_stat_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_stat_config*, i32)* @runtime_stat_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtime_stat_new(%struct.perf_stat_config* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_stat_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32* @calloc(i32 %7, i32 4)
  %9 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %10 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %9, i32 0, i32 1
  store i32* %8, i32** %10, align 8
  %11 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %12 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %19 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.perf_stat_config*, %struct.perf_stat_config** %4, align 8
  %26 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @runtime_stat__init(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @runtime_stat__init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
