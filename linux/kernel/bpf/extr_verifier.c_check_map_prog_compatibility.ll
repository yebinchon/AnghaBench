; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_prog_compatibility.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_map_prog_compatibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_map = type { %struct.bpf_map* }
%struct.bpf_prog = type { i64, i32 }

@BPF_PROG_TYPE_PERF_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"perf_event programs can only use preallocated hash map\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"perf_event programs can only use preallocated inner hash map\0A\00", align 1
@BPF_PROG_TYPE_SOCKET_FILTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"tracing progs cannot use bpf_spin_lock yet\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"offload device mismatch between prog and map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_map*, %struct.bpf_prog*)* @check_map_prog_compatibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_map_prog_compatibility(%struct.bpf_verifier_env* %0, %struct.bpf_map* %1, %struct.bpf_prog* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %6, align 8
  store %struct.bpf_prog* %2, %struct.bpf_prog** %7, align 8
  %8 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %9 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BPF_PROG_TYPE_PERF_EVENT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %15 = call i32 @check_map_prealloc(%struct.bpf_map* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %19 = call i32 @verbose(%struct.bpf_verifier_env* %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %13
  %23 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %24 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %23, i32 0, i32 0
  %25 = load %struct.bpf_map*, %struct.bpf_map** %24, align 8
  %26 = icmp ne %struct.bpf_map* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %29 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %28, i32 0, i32 0
  %30 = load %struct.bpf_map*, %struct.bpf_map** %29, align 8
  %31 = call i32 @check_map_prealloc(%struct.bpf_map* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %35 = call i32 @verbose(%struct.bpf_verifier_env* %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %81

38:                                               ; preds = %27, %22
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %41 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @is_tracing_prog_type(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %47 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BPF_PROG_TYPE_SOCKET_FILTER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45, %39
  %52 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %53 = call i64 @map_value_has_spin_lock(%struct.bpf_map* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %57 = call i32 @verbose(%struct.bpf_verifier_env* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %81

60:                                               ; preds = %51, %45
  %61 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %62 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @bpf_prog_is_dev_bound(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %68 = call i64 @bpf_map_is_dev_bound(%struct.bpf_map* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66, %60
  %71 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %72 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %73 = call i32 @bpf_offload_prog_map_match(%struct.bpf_prog* %71, %struct.bpf_map* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %77 = call i32 @verbose(%struct.bpf_verifier_env* %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %70, %66
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %75, %55, %33, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @check_map_prealloc(%struct.bpf_map*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

declare dso_local i64 @is_tracing_prog_type(i64) #1

declare dso_local i64 @map_value_has_spin_lock(%struct.bpf_map*) #1

declare dso_local i64 @bpf_prog_is_dev_bound(i32) #1

declare dso_local i64 @bpf_map_is_dev_bound(%struct.bpf_map*) #1

declare dso_local i32 @bpf_offload_prog_map_match(%struct.bpf_prog*, %struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
