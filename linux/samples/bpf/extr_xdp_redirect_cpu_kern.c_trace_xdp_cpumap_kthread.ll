; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_kern.c_trace_xdp_cpumap_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_redirect_cpu_kern.c_trace_xdp_cpumap_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumap_kthread_ctx = type { i64, i64, i64 }
%struct.datarec = type { i32, i32, i32 }

@cpumap_kthread_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_xdp_cpumap_kthread(%struct.cpumap_kthread_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumap_kthread_ctx*, align 8
  %4 = alloca %struct.datarec*, align 8
  %5 = alloca i32, align 4
  store %struct.cpumap_kthread_ctx* %0, %struct.cpumap_kthread_ctx** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call %struct.datarec* @bpf_map_lookup_elem(i32* @cpumap_kthread_cnt, i32* %5)
  store %struct.datarec* %6, %struct.datarec** %4, align 8
  %7 = load %struct.datarec*, %struct.datarec** %4, align 8
  %8 = icmp ne %struct.datarec* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.cpumap_kthread_ctx*, %struct.cpumap_kthread_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.cpumap_kthread_ctx, %struct.cpumap_kthread_ctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.datarec*, %struct.datarec** %4, align 8
  %15 = getelementptr inbounds %struct.datarec, %struct.datarec* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.cpumap_kthread_ctx*, %struct.cpumap_kthread_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.cpumap_kthread_ctx, %struct.cpumap_kthread_ctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.datarec*, %struct.datarec** %4, align 8
  %24 = getelementptr inbounds %struct.datarec, %struct.datarec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.cpumap_kthread_ctx*, %struct.cpumap_kthread_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.cpumap_kthread_ctx, %struct.cpumap_kthread_ctx* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %10
  %34 = load %struct.datarec*, %struct.datarec** %4, align 8
  %35 = getelementptr inbounds %struct.datarec, %struct.datarec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %10
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.datarec* @bpf_map_lookup_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
