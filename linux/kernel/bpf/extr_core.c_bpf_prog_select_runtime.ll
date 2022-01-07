; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_select_runtime.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_core.c_bpf_prog_select_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_prog_select_runtime(%struct.bpf_prog* %0, i32* %1) #0 {
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca i32*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %53

11:                                               ; preds = %2
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %13 = call i32 @bpf_prog_select_func(%struct.bpf_prog* %12)
  %14 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bpf_prog_is_dev_bound(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %11
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %21 = call i32 @bpf_prog_alloc_jited_linfo(%struct.bpf_prog* %20)
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %27, %struct.bpf_prog** %3, align 8
  br label %60

28:                                               ; preds = %19
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %30 = call %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %29)
  store %struct.bpf_prog* %30, %struct.bpf_prog** %4, align 8
  %31 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %32 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %37 = call i32 @bpf_prog_free_jited_linfo(%struct.bpf_prog* %36)
  br label %41

38:                                               ; preds = %28
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %40 = call i32 @bpf_prog_free_unused_jited_linfo(%struct.bpf_prog* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %52

42:                                               ; preds = %11
  %43 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %44 = call i32 @bpf_prog_offload_compile(%struct.bpf_prog* %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %50, %struct.bpf_prog** %3, align 8
  br label %60

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %10
  %54 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %55 = call i32 @bpf_prog_lock_ro(%struct.bpf_prog* %54)
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %57 = call i32 @bpf_check_tail_call(%struct.bpf_prog* %56)
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %59, %struct.bpf_prog** %3, align 8
  br label %60

60:                                               ; preds = %53, %49, %26
  %61 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  ret %struct.bpf_prog* %61
}

declare dso_local i32 @bpf_prog_select_func(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_is_dev_bound(i32) #1

declare dso_local i32 @bpf_prog_alloc_jited_linfo(%struct.bpf_prog*) #1

declare dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_free_jited_linfo(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_free_unused_jited_linfo(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_offload_compile(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_prog_lock_ro(%struct.bpf_prog*) #1

declare dso_local i32 @bpf_check_tail_call(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
