; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_stacktrace_build_id.c_oncpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_stacktrace_build_id.c_oncpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.random_urandom_args = type { i32 }

@PERF_MAX_STACK_DEPTH = common dso_local global i32 0, align 4
@control_map = common dso_local global i32 0, align 4
@stackmap = common dso_local global i32 0, align 4
@BPF_F_USER_STACK = common dso_local global i32 0, align 4
@stackid_hmap = common dso_local global i32 0, align 4
@stack_amap = common dso_local global i32 0, align 4
@BPF_F_USER_BUILD_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oncpu(%struct.random_urandom_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.random_urandom_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.random_urandom_args* %0, %struct.random_urandom_args** %3, align 8
  %9 = load i32, i32* @PERF_MAX_STACK_DEPTH, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = call i8* @bpf_map_lookup_elem(i32* @control_map, i32* %5)
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %43

22:                                               ; preds = %17, %1
  %23 = load %struct.random_urandom_args*, %struct.random_urandom_args** %3, align 8
  %24 = load i32, i32* @BPF_F_USER_STACK, align 4
  %25 = call i32 @bpf_get_stackid(%struct.random_urandom_args* %23, i32* @stackmap, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = call i32 @bpf_map_update_elem(i32* @stackid_hmap, i32* %5, i32* %6, i32 0)
  %30 = call i8* @bpf_map_lookup_elem(i32* @stack_amap, i32* %5)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.random_urandom_args*, %struct.random_urandom_args** %3, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @BPF_F_USER_STACK, align 4
  %38 = load i32, i32* @BPF_F_USER_BUILD_ID, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @bpf_get_stack(%struct.random_urandom_args* %34, i8* %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %28
  br label %42

42:                                               ; preds = %41, %22
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i8* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i32 @bpf_get_stackid(%struct.random_urandom_args*, i32*, i32) #1

declare dso_local i32 @bpf_map_update_elem(i32*, i32*, i32*, i32) #1

declare dso_local i32 @bpf_get_stack(%struct.random_urandom_args*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
