; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_perf_event_attach_bpf_prog.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_perf_event_attach_bpf_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__*, %struct.bpf_prog* }
%struct.TYPE_3__ = type { i32 }
%struct.bpf_prog = type { i64 }
%struct.bpf_prog_array = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bpf_event_mutex = common dso_local global i32 0, align 4
@BPF_TRACE_MAX_PROGS = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event_attach_bpf_prog(%struct.perf_event* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_prog_array*, align 8
  %7 = alloca %struct.bpf_prog_array*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %9 = load i32, i32* @EEXIST, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @trace_kprobe_on_func_entry(%struct.TYPE_3__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @trace_kprobe_error_injectable(%struct.TYPE_3__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %21, %2
  %31 = call i32 @mutex_lock(i32* @bpf_event_mutex)
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = load %struct.bpf_prog*, %struct.bpf_prog** %33, align 8
  %35 = icmp ne %struct.bpf_prog* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %74

37:                                               ; preds = %30
  %38 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.bpf_prog_array* @bpf_event_rcu_dereference(i32 %42)
  store %struct.bpf_prog_array* %43, %struct.bpf_prog_array** %6, align 8
  %44 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %45 = icmp ne %struct.bpf_prog_array* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %48 = call i64 @bpf_prog_array_length(%struct.bpf_prog_array* %47)
  %49 = load i64, i64* @BPF_TRACE_MAX_PROGS, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @E2BIG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %74

54:                                               ; preds = %46, %37
  %55 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %57 = call i32 @bpf_prog_array_copy(%struct.bpf_prog_array* %55, i32* null, %struct.bpf_prog* %56, %struct.bpf_prog_array** %7)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %74

61:                                               ; preds = %54
  %62 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %63 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %64 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %63, i32 0, i32 1
  store %struct.bpf_prog* %62, %struct.bpf_prog** %64, align 8
  %65 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %66 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %7, align 8
  %71 = call i32 @rcu_assign_pointer(i32 %69, %struct.bpf_prog_array* %70)
  %72 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %73 = call i32 @bpf_prog_array_free(%struct.bpf_prog_array* %72)
  br label %74

74:                                               ; preds = %61, %60, %51, %36
  %75 = call i32 @mutex_unlock(i32* @bpf_event_mutex)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @trace_kprobe_on_func_entry(%struct.TYPE_3__*) #1

declare dso_local i32 @trace_kprobe_error_injectable(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bpf_prog_array* @bpf_event_rcu_dereference(i32) #1

declare dso_local i64 @bpf_prog_array_length(%struct.bpf_prog_array*) #1

declare dso_local i32 @bpf_prog_array_copy(%struct.bpf_prog_array*, i32*, %struct.bpf_prog*, %struct.bpf_prog_array**) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog_array*) #1

declare dso_local i32 @bpf_prog_array_free(%struct.bpf_prog_array*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
