; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_kern.c_trace_xdp_cpumap_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_kern.c_trace_xdp_cpumap_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumap_enqueue_ctx = type { i64, i64, i64 }
%struct.datarec = type { i32, i32, i32 }

@MAX_CPUS = common dso_local global i64 0, align 8
@cpumap_enqueue_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_xdp_cpumap_enqueue(%struct.cpumap_enqueue_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumap_enqueue_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.datarec*, align 8
  store %struct.cpumap_enqueue_ctx* %0, %struct.cpumap_enqueue_ctx** %3, align 8
  %6 = load %struct.cpumap_enqueue_ctx*, %struct.cpumap_enqueue_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.cpumap_enqueue_ctx, %struct.cpumap_enqueue_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MAX_CPUS, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = call %struct.datarec* @bpf_map_lookup_elem(i32* @cpumap_enqueue_cnt, i64* %4)
  store %struct.datarec* %14, %struct.datarec** %5, align 8
  %15 = load %struct.datarec*, %struct.datarec** %5, align 8
  %16 = icmp ne %struct.datarec* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %47

18:                                               ; preds = %13
  %19 = load %struct.cpumap_enqueue_ctx*, %struct.cpumap_enqueue_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.cpumap_enqueue_ctx, %struct.cpumap_enqueue_ctx* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.datarec*, %struct.datarec** %5, align 8
  %23 = getelementptr inbounds %struct.datarec, %struct.datarec* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.cpumap_enqueue_ctx*, %struct.cpumap_enqueue_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.cpumap_enqueue_ctx, %struct.cpumap_enqueue_ctx* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.datarec*, %struct.datarec** %5, align 8
  %32 = getelementptr inbounds %struct.datarec, %struct.datarec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.cpumap_enqueue_ctx*, %struct.cpumap_enqueue_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.cpumap_enqueue_ctx, %struct.cpumap_enqueue_ctx* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %18
  %42 = load %struct.datarec*, %struct.datarec** %5, align 8
  %43 = getelementptr inbounds %struct.datarec, %struct.datarec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %18
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %17, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.datarec* @bpf_map_lookup_elem(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
