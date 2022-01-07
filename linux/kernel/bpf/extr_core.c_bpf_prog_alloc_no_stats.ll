; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_alloc_no_stats.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_alloc_no_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, %struct.bpf_prog_aux*, i32 }
%struct.bpf_prog_aux = type { i32, %struct.bpf_prog* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_prog_alloc_no_stats(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_prog_aux*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load i32, i32* @__GFP_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @round_up(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PAGE_KERNEL, align 4
  %20 = call %struct.bpf_prog* @__vmalloc(i32 %17, i32 %18, i32 %19)
  store %struct.bpf_prog* %20, %struct.bpf_prog** %8, align 8
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %22 = icmp eq %struct.bpf_prog* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.bpf_prog* null, %struct.bpf_prog** %3, align 8
  br label %57

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.bpf_prog_aux* @kzalloc(i32 16, i32 %27)
  store %struct.bpf_prog_aux* %28, %struct.bpf_prog_aux** %7, align 8
  %29 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %7, align 8
  %30 = icmp eq %struct.bpf_prog_aux* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %33 = call i32 @vfree(%struct.bpf_prog* %32)
  store %struct.bpf_prog* null, %struct.bpf_prog** %3, align 8
  br label %57

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = udiv i32 %35, %36
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %39 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %7, align 8
  %41 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %42 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %41, i32 0, i32 1
  store %struct.bpf_prog_aux* %40, %struct.bpf_prog_aux** %42, align 8
  %43 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %44 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %45 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %44, i32 0, i32 1
  %46 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %45, align 8
  %47 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %46, i32 0, i32 1
  store %struct.bpf_prog* %43, %struct.bpf_prog** %47, align 8
  %48 = call i32 (...) @ebpf_jit_enabled()
  %49 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %50 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %52 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %51, i32 0, i32 1
  %53 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %52, align 8
  %54 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %53, i32 0, i32 0
  %55 = call i32 @INIT_LIST_HEAD_RCU(i32* %54)
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  store %struct.bpf_prog* %56, %struct.bpf_prog** %3, align 8
  br label %57

57:                                               ; preds = %34, %31, %23
  %58 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  ret %struct.bpf_prog* %58
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.bpf_prog* @__vmalloc(i32, i32, i32) #1

declare dso_local %struct.bpf_prog_aux* @kzalloc(i32, i32) #1

declare dso_local i32 @vfree(%struct.bpf_prog*) #1

declare dso_local i32 @ebpf_jit_enabled(...) #1

declare dso_local i32 @INIT_LIST_HEAD_RCU(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
