; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf__prepare_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf__prepare_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.bpf_object = type { i32 }

@libbpf_initialized = common dso_local global i32 0, align 4
@libbpf_perf_print = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"bpf: builtin compilation failed: %d, try external compiler\0A\00", align 1
@BPF_LOADER_ERRNO__COMPILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bpf: successful builtin compilation\0A\00", align 1
@llvm_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"bpf: failed to load %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_object* @bpf__prepare_load(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_object*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @libbpf_initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @libbpf_perf_print, align 4
  %14 = call i32 @libbpf_set_print(i32 %13)
  store i32 1, i32* @libbpf_initialized, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = call i32 (...) @perf_clang__init()
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @perf_clang__compile_bpf(i8* %20, i8** %8, i64* %9)
  store i32 %21, i32* %7, align 4
  %22 = call i32 (...) @perf_clang__cleanup()
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @llvm__compile_bpf(i8* %28, i8** %8, i64* %9)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @BPF_LOADER_ERRNO__COMPILE, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.bpf_object* @ERR_PTR(i32 %34)
  store %struct.bpf_object* %35, %struct.bpf_object** %3, align 8
  br label %71

36:                                               ; preds = %25
  br label %39

37:                                               ; preds = %18
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call %struct.bpf_object* @bpf_object__open_buffer(i8* %40, i64 %41, i8* %42)
  store %struct.bpf_object* %43, %struct.bpf_object** %6, align 8
  %44 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %45 = call i64 @IS_ERR_OR_NULL(%struct.bpf_object* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @llvm_param, i32 0, i32 0), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @llvm__dump_obj(i8* %51, i8* %52, i64 %53)
  br label %55

55:                                               ; preds = %50, %47, %39
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  br label %61

58:                                               ; preds = %15
  %59 = load i8*, i8** %4, align 8
  %60 = call %struct.bpf_object* @bpf_object__open(i8* %59)
  store %struct.bpf_object* %60, %struct.bpf_object** %6, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  %63 = call i64 @IS_ERR_OR_NULL(%struct.bpf_object* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  store %struct.bpf_object* %68, %struct.bpf_object** %3, align 8
  br label %71

69:                                               ; preds = %61
  %70 = load %struct.bpf_object*, %struct.bpf_object** %6, align 8
  store %struct.bpf_object* %70, %struct.bpf_object** %3, align 8
  br label %71

71:                                               ; preds = %69, %65, %32
  %72 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  ret %struct.bpf_object* %72
}

declare dso_local i32 @libbpf_set_print(i32) #1

declare dso_local i32 @perf_clang__init(...) #1

declare dso_local i32 @perf_clang__compile_bpf(i8*, i8**, i64*) #1

declare dso_local i32 @perf_clang__cleanup(...) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @llvm__compile_bpf(i8*, i8**, i64*) #1

declare dso_local %struct.bpf_object* @ERR_PTR(i32) #1

declare dso_local %struct.bpf_object* @bpf_object__open_buffer(i8*, i64, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.bpf_object*) #1

declare dso_local i32 @llvm__dump_obj(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.bpf_object* @bpf_object__open(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
