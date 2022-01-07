; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_he__set_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_he__set_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.c2c_hist_entry = type { i32, i64, i32, i32 }
%struct.perf_sample = type { i64 }

@c2c = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"WARNING: failed to find node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2c_hist_entry*, %struct.perf_sample*)* @c2c_he__set_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2c_he__set_node(%struct.c2c_hist_entry* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca %struct.c2c_hist_entry*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca i32, align 4
  store %struct.c2c_hist_entry* %0, %struct.c2c_hist_entry** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %6 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %7 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %3, align 8
  %12 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %15 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @mem2node__node(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 0), i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ONCE(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %47

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %3, align 8
  %27 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_bit(i32 %25, i32 %28)
  %30 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %3, align 8
  %31 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %34 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %24
  %38 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %3, align 8
  %39 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %43 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %3, align 8
  %46 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %10, %23, %37, %24
  ret void
}

declare dso_local i32 @mem2node__node(i32*, i64) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
