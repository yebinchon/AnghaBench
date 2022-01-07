; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_runtime_stat_delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_runtime_stat_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_stat_config = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_stat_config*)* @runtime_stat_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @runtime_stat_delete(%struct.perf_stat_config* %0) #0 {
  %2 = alloca %struct.perf_stat_config*, align 8
  %3 = alloca i32, align 4
  store %struct.perf_stat_config* %0, %struct.perf_stat_config** %2, align 8
  %4 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %5 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %13 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %18 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @runtime_stat__exit(i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.perf_stat_config*, %struct.perf_stat_config** %2, align 8
  %29 = getelementptr inbounds %struct.perf_stat_config, %struct.perf_stat_config* %28, i32 0, i32 1
  %30 = call i32 @zfree(i32** %29)
  br label %31

31:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @runtime_stat__exit(i32*) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
