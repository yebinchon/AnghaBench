; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_get_perf_event_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_get_perf_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_7__, %struct.TYPE_8__*, %struct.bpf_prog* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.bpf_prog = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_PERF_EVENT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_TRACEPOINT = common dso_local global i32 0, align 4
@BPF_FD_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@PERF_TYPE_TRACEPOINT = common dso_local global i64 0, align 8
@TRACE_EVENT_FL_KPROBE = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_UPROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_get_perf_event_info(%struct.perf_event* %0, i32* %1, i32* %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bpf_prog*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 2
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %20, align 8
  store %struct.bpf_prog* %21, %struct.bpf_prog** %16, align 8
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %23 = icmp ne %struct.bpf_prog* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %89

27:                                               ; preds = %6
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %29 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BPF_PROG_TYPE_PERF_EVENT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %89

36:                                               ; preds = %27
  %37 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %38 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @TRACE_EVENT_FL_TRACEPOINT, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @is_syscall_trace_event(%struct.TYPE_8__* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57, %36
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %73 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  br label %77

77:                                               ; preds = %71, %63
  %78 = phi i8* [ %70, %63 ], [ %76, %71 ]
  %79 = load i8**, i8*** %11, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* @BPF_FD_TYPE_TRACEPOINT, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %12, align 8
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %13, align 8
  store i32 0, i32* %83, align 4
  br label %87

84:                                               ; preds = %57
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %84, %77
  %88 = load i32, i32* %18, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %33, %24
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @is_syscall_trace_event(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
