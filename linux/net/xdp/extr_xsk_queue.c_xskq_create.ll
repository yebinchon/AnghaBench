; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.c_xskq_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk_queue.c_xskq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_queue = type { %struct.xdp_ring*, i8*, i8* }
%struct.xdp_ring = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xsk_queue* @xskq_create(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.xsk_queue*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xsk_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.xsk_queue* @kzalloc(i32 24, i32 %9)
  store %struct.xsk_queue* %10, %struct.xsk_queue** %6, align 8
  %11 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %12 = icmp ne %struct.xsk_queue* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.xsk_queue* null, %struct.xsk_queue** %3, align 8
  br label %57

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %17 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr i8, i8* %18, i64 -1
  %20 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %21 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @__GFP_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @__GFP_NOWARN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @__GFP_COMP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @__GFP_NORETRY, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %35 = call i64 @xskq_umem_get_ring_size(%struct.xsk_queue* %34)
  br label %39

36:                                               ; preds = %14
  %37 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %38 = call i64 @xskq_rxtx_get_ring_size(%struct.xsk_queue* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i64 [ %35, %33 ], [ %38, %36 ]
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @get_order(i64 %42)
  %44 = call i64 @__get_free_pages(i32 %41, i32 %43)
  %45 = inttoptr i64 %44 to %struct.xdp_ring*
  %46 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %47 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %46, i32 0, i32 0
  store %struct.xdp_ring* %45, %struct.xdp_ring** %47, align 8
  %48 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %49 = getelementptr inbounds %struct.xsk_queue, %struct.xsk_queue* %48, i32 0, i32 0
  %50 = load %struct.xdp_ring*, %struct.xdp_ring** %49, align 8
  %51 = icmp ne %struct.xdp_ring* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  %54 = call i32 @kfree(%struct.xsk_queue* %53)
  store %struct.xsk_queue* null, %struct.xsk_queue** %3, align 8
  br label %57

55:                                               ; preds = %39
  %56 = load %struct.xsk_queue*, %struct.xsk_queue** %6, align 8
  store %struct.xsk_queue* %56, %struct.xsk_queue** %3, align 8
  br label %57

57:                                               ; preds = %55, %52, %13
  %58 = load %struct.xsk_queue*, %struct.xsk_queue** %3, align 8
  ret %struct.xsk_queue* %58
}

declare dso_local %struct.xsk_queue* @kzalloc(i32, i32) #1

declare dso_local i64 @xskq_umem_get_ring_size(%struct.xsk_queue*) #1

declare dso_local i64 @xskq_rxtx_get_ring_size(%struct.xsk_queue*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @kfree(%struct.xsk_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
