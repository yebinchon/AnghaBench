; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_compute_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_compute_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_hist_entry = type { %struct.compute_stats }
%struct.compute_stats = type { i32, i32, i32 }
%struct.c2c_stats = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2c_hist_entry*, %struct.c2c_stats*, i32)* @compute_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_stats(%struct.c2c_hist_entry* %0, %struct.c2c_stats* %1, i32 %2) #0 {
  %4 = alloca %struct.c2c_hist_entry*, align 8
  %5 = alloca %struct.c2c_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.compute_stats*, align 8
  store %struct.c2c_hist_entry* %0, %struct.c2c_hist_entry** %4, align 8
  store %struct.c2c_stats* %1, %struct.c2c_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %4, align 8
  %9 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %8, i32 0, i32 0
  store %struct.compute_stats* %9, %struct.compute_stats** %7, align 8
  %10 = load %struct.c2c_stats*, %struct.c2c_stats** %5, align 8
  %11 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.compute_stats*, %struct.compute_stats** %7, align 8
  %16 = getelementptr inbounds %struct.compute_stats, %struct.compute_stats* %15, i32 0, i32 2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @update_stats(i32* %16, i32 %17)
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.c2c_stats*, %struct.c2c_stats** %5, align 8
  %21 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.compute_stats*, %struct.compute_stats** %7, align 8
  %26 = getelementptr inbounds %struct.compute_stats, %struct.compute_stats* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @update_stats(i32* %26, i32 %27)
  br label %40

29:                                               ; preds = %19
  %30 = load %struct.c2c_stats*, %struct.c2c_stats** %5, align 8
  %31 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.compute_stats*, %struct.compute_stats** %7, align 8
  %36 = getelementptr inbounds %struct.compute_stats, %struct.compute_stats* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @update_stats(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @update_stats(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
