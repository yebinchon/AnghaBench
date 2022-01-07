; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_alloc_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@map_idr_lock = common dso_local global i32 0, align 4
@map_idr = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*)* @bpf_map_alloc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map_alloc_id(%struct.bpf_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_map*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32 @idr_preload(i32 %5)
  %7 = call i32 @spin_lock_bh(i32* @map_idr_lock)
  %8 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %9 = load i32, i32* @INT_MAX, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i32 @idr_alloc_cyclic(i32* @map_idr, %struct.bpf_map* %8, i32 1, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.bpf_map*, %struct.bpf_map** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = call i32 @spin_unlock_bh(i32* @map_idr_lock)
  %20 = call i32 (...) @idr_preload_end()
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %38

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 0, %33 ], [ %35, %34 ]
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_alloc_cyclic(i32*, %struct.bpf_map*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
