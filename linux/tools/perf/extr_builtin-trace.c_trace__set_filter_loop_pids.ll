; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_filter_loop_pids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__set_filter_loop_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.thread = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"sshd\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"gnome-terminal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*)* @trace__set_filter_loop_pids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__set_filter_loop_pids(%struct.trace* %0) #0 {
  %2 = alloca %struct.trace*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.thread*, align 8
  store %struct.trace* %0, %struct.trace** %2, align 8
  store i32 1, i32* %3, align 4
  %8 = bitcast [32 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 128, i1 false)
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %10 = call i32 (...) @getpid()
  store i32 %10, i32* %9, align 4
  %11 = load %struct.trace*, %struct.trace** %2, align 8
  %12 = getelementptr inbounds %struct.trace, %struct.trace* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = call %struct.thread* @machine__find_thread(i32 %13, i32 %15, i32 %17)
  store %struct.thread* %18, %struct.thread** %6, align 8
  br label %19

19:                                               ; preds = %61, %1
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = icmp ne %struct.thread* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp ult i32 %23, %25
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %63

29:                                               ; preds = %27
  %30 = load %struct.trace*, %struct.trace** %2, align 8
  %31 = getelementptr inbounds %struct.trace, %struct.trace* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.thread*, %struct.thread** %6, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.thread* @machine__find_thread(i32 %32, i32 %35, i32 %38)
  store %struct.thread* %39, %struct.thread** %7, align 8
  %40 = load %struct.thread*, %struct.thread** %7, align 8
  %41 = icmp eq %struct.thread* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %63

43:                                               ; preds = %29
  %44 = load %struct.thread*, %struct.thread** %7, align 8
  %45 = call i32 @thread__comm_str(%struct.thread* %44)
  %46 = call i32 @strcmp(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = call i32 @thread__comm_str(%struct.thread* %49)
  %51 = call i64 @strstarts(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %43
  %54 = load %struct.thread*, %struct.thread** %7, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %59
  store i32 %56, i32* %60, align 4
  br label %63

61:                                               ; preds = %48
  %62 = load %struct.thread*, %struct.thread** %7, align 8
  store %struct.thread* %62, %struct.thread** %6, align 8
  br label %19

63:                                               ; preds = %53, %42, %27
  %64 = load %struct.trace*, %struct.trace** %2, align 8
  %65 = getelementptr inbounds %struct.trace, %struct.trace* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %69 = call i32 @perf_evlist__set_tp_filter_pids(i32 %66, i32 %67, i32* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %63
  %73 = load %struct.trace*, %struct.trace** %2, align 8
  %74 = getelementptr inbounds %struct.trace, %struct.trace* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.trace*, %struct.trace** %2, align 8
  %80 = getelementptr inbounds %struct.trace, %struct.trace* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %85 = call i32 @bpf_map__set_filter_pids(i64 %82, i32 %83, i32* %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %78, %72, %63
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getpid(...) #2

declare dso_local %struct.thread* @machine__find_thread(i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @thread__comm_str(%struct.thread*) #2

declare dso_local i64 @strstarts(i32, i8*) #2

declare dso_local i32 @perf_evlist__set_tp_filter_pids(i32, i32, i32*) #2

declare dso_local i32 @bpf_map__set_filter_pids(i64, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
