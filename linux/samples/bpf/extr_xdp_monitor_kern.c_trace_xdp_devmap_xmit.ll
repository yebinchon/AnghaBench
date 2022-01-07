; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_kern.c_trace_xdp_devmap_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_monitor_kern.c_trace_xdp_devmap_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devmap_xmit_ctx = type { i64, i64, i64 }
%struct.datarec = type { i32, i32, i32, i32 }

@devmap_xmit_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_xdp_devmap_xmit(%struct.devmap_xmit_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devmap_xmit_ctx*, align 8
  %4 = alloca %struct.datarec*, align 8
  %5 = alloca i32, align 4
  store %struct.devmap_xmit_ctx* %0, %struct.devmap_xmit_ctx** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call %struct.datarec* @bpf_map_lookup_elem(i32* @devmap_xmit_cnt, i32* %5)
  store %struct.datarec* %6, %struct.datarec** %4, align 8
  %7 = load %struct.datarec*, %struct.datarec** %4, align 8
  %8 = icmp ne %struct.datarec* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.devmap_xmit_ctx*, %struct.devmap_xmit_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.devmap_xmit_ctx, %struct.devmap_xmit_ctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.datarec*, %struct.datarec** %4, align 8
  %15 = getelementptr inbounds %struct.datarec, %struct.datarec* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.devmap_xmit_ctx*, %struct.devmap_xmit_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.devmap_xmit_ctx, %struct.devmap_xmit_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.datarec*, %struct.datarec** %4, align 8
  %24 = getelementptr inbounds %struct.datarec, %struct.datarec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.datarec*, %struct.datarec** %4, align 8
  %30 = getelementptr inbounds %struct.datarec, %struct.datarec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.devmap_xmit_ctx*, %struct.devmap_xmit_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.devmap_xmit_ctx, %struct.devmap_xmit_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %10
  %38 = load %struct.datarec*, %struct.datarec** %4, align 8
  %39 = getelementptr inbounds %struct.datarec, %struct.datarec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %10
  %43 = load %struct.devmap_xmit_ctx*, %struct.devmap_xmit_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.devmap_xmit_ctx, %struct.devmap_xmit_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.datarec*, %struct.datarec** %4, align 8
  %49 = getelementptr inbounds %struct.datarec, %struct.datarec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %42
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.datarec* @bpf_map_lookup_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
