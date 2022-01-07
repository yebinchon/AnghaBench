; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_perf_event_detach_bpf_prog.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_perf_event_detach_bpf_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog_array = type { i32 }

@bpf_event_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_detach_bpf_prog(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.bpf_prog_array*, align 8
  %4 = alloca %struct.bpf_prog_array*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = call i32 @mutex_lock(i32* @bpf_event_mutex)
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.bpf_prog_array* @bpf_event_rcu_dereference(i32 %17)
  store %struct.bpf_prog_array* %18, %struct.bpf_prog_array** %3, align 8
  %19 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %3, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @bpf_prog_array_copy(%struct.bpf_prog_array* %19, i32* %22, i32* null, %struct.bpf_prog_array** %4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  br label %55

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %3, align 8
  %34 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bpf_prog_array_delete_safe(%struct.bpf_prog_array* %33, i32* %36)
  br label %48

38:                                               ; preds = %29
  %39 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %4, align 8
  %45 = call i32 @rcu_assign_pointer(i32 %43, %struct.bpf_prog_array* %44)
  %46 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %3, align 8
  %47 = call i32 @bpf_prog_array_free(%struct.bpf_prog_array* %46)
  br label %48

48:                                               ; preds = %38, %32
  %49 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bpf_prog_put(i32* %51)
  %53 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %28, %11
  %56 = call i32 @mutex_unlock(i32* @bpf_event_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bpf_prog_array* @bpf_event_rcu_dereference(i32) #1

declare dso_local i32 @bpf_prog_array_copy(%struct.bpf_prog_array*, i32*, i32*, %struct.bpf_prog_array**) #1

declare dso_local i32 @bpf_prog_array_delete_safe(%struct.bpf_prog_array*, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog_array*) #1

declare dso_local i32 @bpf_prog_array_free(%struct.bpf_prog_array*) #1

declare dso_local i32 @bpf_prog_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
