; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.c_xsk_reuseq_swap.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.c_xsk_reuseq_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { %struct.xdp_umem_fq_reuse* }
%struct.xdp_umem_fq_reuse = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xdp_umem_fq_reuse* @xsk_reuseq_swap(%struct.xdp_umem* %0, %struct.xdp_umem_fq_reuse* %1) #0 {
  %3 = alloca %struct.xdp_umem_fq_reuse*, align 8
  %4 = alloca %struct.xdp_umem*, align 8
  %5 = alloca %struct.xdp_umem_fq_reuse*, align 8
  %6 = alloca %struct.xdp_umem_fq_reuse*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %4, align 8
  store %struct.xdp_umem_fq_reuse* %1, %struct.xdp_umem_fq_reuse** %5, align 8
  %7 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %8 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %7, i32 0, i32 0
  %9 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %8, align 8
  store %struct.xdp_umem_fq_reuse* %9, %struct.xdp_umem_fq_reuse** %6, align 8
  %10 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  %11 = icmp ne %struct.xdp_umem_fq_reuse* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %5, align 8
  %14 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %15 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %14, i32 0, i32 0
  store %struct.xdp_umem_fq_reuse* %13, %struct.xdp_umem_fq_reuse** %15, align 8
  store %struct.xdp_umem_fq_reuse* null, %struct.xdp_umem_fq_reuse** %3, align 8
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %5, align 8
  %18 = getelementptr inbounds %struct.xdp_umem_fq_reuse, %struct.xdp_umem_fq_reuse* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  %21 = getelementptr inbounds %struct.xdp_umem_fq_reuse, %struct.xdp_umem_fq_reuse* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %5, align 8
  store %struct.xdp_umem_fq_reuse* %25, %struct.xdp_umem_fq_reuse** %3, align 8
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %5, align 8
  %28 = getelementptr inbounds %struct.xdp_umem_fq_reuse, %struct.xdp_umem_fq_reuse* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  %31 = getelementptr inbounds %struct.xdp_umem_fq_reuse, %struct.xdp_umem_fq_reuse* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  %34 = getelementptr inbounds %struct.xdp_umem_fq_reuse, %struct.xdp_umem_fq_reuse* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @array_size(i64 %35, i32 4)
  %37 = call i32 @memcpy(i32 %29, i32 %32, i32 %36)
  %38 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  %39 = getelementptr inbounds %struct.xdp_umem_fq_reuse, %struct.xdp_umem_fq_reuse* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %5, align 8
  %42 = getelementptr inbounds %struct.xdp_umem_fq_reuse, %struct.xdp_umem_fq_reuse* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %5, align 8
  %44 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %45 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %44, i32 0, i32 0
  store %struct.xdp_umem_fq_reuse* %43, %struct.xdp_umem_fq_reuse** %45, align 8
  %46 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  store %struct.xdp_umem_fq_reuse* %46, %struct.xdp_umem_fq_reuse** %3, align 8
  br label %47

47:                                               ; preds = %26, %24, %12
  %48 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %3, align 8
  ret %struct.xdp_umem_fq_reuse* %48
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @array_size(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
