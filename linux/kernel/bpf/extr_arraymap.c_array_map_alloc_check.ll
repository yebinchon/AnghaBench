; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_alloc_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_arraymap.c_array_map_alloc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i64 }

@BPF_MAP_TYPE_PERCPU_ARRAY = common dso_local global i64 0, align 8
@ARRAY_CREATE_FLAG_MASK = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KMALLOC_MAX_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_map_alloc_check(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %6 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %7 = bitcast %union.bpf_attr* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BPF_MAP_TYPE_PERCPU_ARRAY, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %13 = call i32 @bpf_map_attr_numa_node(%union.bpf_attr* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %15 = bitcast %union.bpf_attr* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %1
  %19 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %20 = bitcast %union.bpf_attr* %19 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 4
  br i1 %22, label %49, label %23

23:                                               ; preds = %18
  %24 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %25 = bitcast %union.bpf_attr* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %23
  %29 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %30 = bitcast %union.bpf_attr* %29 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ARRAY_CREATE_FLAG_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %28
  %37 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %38 = bitcast %union.bpf_attr* %37 to i32*
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bpf_map_flags_access_ok(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NUMA_NO_NODE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %36, %28, %23, %18, %1
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %62

52:                                               ; preds = %45, %42
  %53 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %54 = bitcast %union.bpf_attr* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @KMALLOC_MAX_SIZE, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @E2BIG, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %58, %49
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @bpf_map_attr_numa_node(%union.bpf_attr*) #1

declare dso_local i32 @bpf_map_flags_access_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
