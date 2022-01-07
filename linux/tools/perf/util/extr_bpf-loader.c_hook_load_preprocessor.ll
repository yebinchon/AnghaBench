; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_hook_load_preprocessor.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_hook_load_preprocessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }
%struct.bpf_prog_priv = type { i32, i32, i8*, i8*, %struct.perf_probe_event, i64 }
%struct.perf_probe_event = type { i32, %struct.probe_trace_event* }
%struct.probe_trace_event = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"Internal error when hook preprocessor\0A\00", align 1
@BPF_LOADER_ERRNO__INTERNAL = common dso_local global i32 0, align 4
@BPF_MAXINSNS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Not enough memory: alloc insns_buf failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Not enough memory: alloc type_mapping failed\0A\00", align 1
@preproc_gen_prologue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*)* @hook_load_preprocessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hook_load_preprocessor(%struct.bpf_program* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_program*, align 8
  %4 = alloca %struct.bpf_prog_priv*, align 8
  %5 = alloca %struct.perf_probe_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.probe_trace_event*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %3, align 8
  %10 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  %11 = call %struct.bpf_prog_priv* @bpf_program__priv(%struct.bpf_program* %10)
  store %struct.bpf_prog_priv* %11, %struct.bpf_prog_priv** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %13 = call i64 @IS_ERR(%struct.bpf_prog_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %17 = icmp ne %struct.bpf_prog_priv* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %1
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @BPF_LOADER_ERRNO__INTERNAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %127

22:                                               ; preds = %15
  %23 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  store i32 0, i32* %2, align 4
  br label %127

30:                                               ; preds = %22
  %31 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %32 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %31, i32 0, i32 4
  store %struct.perf_probe_event* %32, %struct.perf_probe_event** %5, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %52, %30
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %36 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %41 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %40, i32 0, i32 1
  %42 = load %struct.probe_trace_event*, %struct.probe_trace_event** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %42, i64 %44
  store %struct.probe_trace_event* %45, %struct.probe_trace_event** %9, align 8
  %46 = load %struct.probe_trace_event*, %struct.probe_trace_event** %9, align 8
  %47 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %55

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %33

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %60 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %127

61:                                               ; preds = %55
  %62 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %63 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* @BPF_MAXINSNS, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i8* @malloc(i32 %67)
  %69 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %70 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %72 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %61
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %127

79:                                               ; preds = %61
  %80 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %81 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @malloc(i32 %85)
  %87 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %88 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %90 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %79
  %94 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %127

97:                                               ; preds = %79
  %98 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %99 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %102 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memset(i8* %100, i32 -1, i32 %106)
  %108 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %109 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %110 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %113 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %112, i32 0, i32 1
  %114 = call i32 @map_prologue(%struct.perf_probe_event* %108, i8* %111, i32* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %97
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %127

119:                                              ; preds = %97
  %120 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  %121 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %4, align 8
  %122 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @preproc_gen_prologue, align 4
  %125 = call i32 @bpf_program__set_prep(%struct.bpf_program* %120, i32 %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %119, %117, %93, %75, %58, %27, %18
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.bpf_prog_priv* @bpf_program__priv(%struct.bpf_program*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog_priv*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @map_prologue(%struct.perf_probe_event*, i8*, i32*) #1

declare dso_local i32 @bpf_program__set_prep(%struct.bpf_program*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
