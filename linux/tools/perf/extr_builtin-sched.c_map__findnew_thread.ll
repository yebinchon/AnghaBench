; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_map__findnew_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_map__findnew_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.perf_sched = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.machine = type { i32 }
%union.map_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread* (%struct.perf_sched*, %struct.machine*, i32, i32)* @map__findnew_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread* @map__findnew_thread(%struct.perf_sched* %0, %struct.machine* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.perf_sched*, align 8
  %7 = alloca %struct.machine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %union.map_priv, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %6, align 8
  store %struct.machine* %1, %struct.machine** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.machine*, %struct.machine** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.thread* @machine__findnew_thread(%struct.machine* %12, i32 %13, i32 %14)
  store %struct.thread* %15, %struct.thread** %10, align 8
  %16 = bitcast %union.map_priv* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %18 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.thread*, %struct.thread** %10, align 8
  %24 = icmp ne %struct.thread* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.thread*, %struct.thread** %10, align 8
  %27 = call i64 @thread__priv(%struct.thread* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %22, %4
  %30 = load %struct.thread*, %struct.thread** %10, align 8
  store %struct.thread* %30, %struct.thread** %5, align 8
  br label %47

31:                                               ; preds = %25
  %32 = load %struct.perf_sched*, %struct.perf_sched** %6, align 8
  %33 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @thread_map__has(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = bitcast %union.map_priv* %11 to i32*
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = load %struct.thread*, %struct.thread** %10, align 8
  %43 = bitcast %union.map_priv* %11 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @thread__set_priv(%struct.thread* %42, i32 %44)
  %46 = load %struct.thread*, %struct.thread** %10, align 8
  store %struct.thread* %46, %struct.thread** %5, align 8
  br label %47

47:                                               ; preds = %41, %29
  %48 = load %struct.thread*, %struct.thread** %5, align 8
  ret %struct.thread* %48
}

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @thread__priv(%struct.thread*) #1

declare dso_local i64 @thread_map__has(i32, i32) #1

declare dso_local i32 @thread__set_priv(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
