; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_preproc_gen_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_preproc_gen_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }
%struct.bpf_insn = type { i32 }
%struct.bpf_prog_prep_result = type { i64, i32*, %struct.bpf_insn* }
%struct.bpf_prog_priv = type { i32, i32*, %struct.bpf_insn*, %struct.perf_probe_event, i64 }
%struct.perf_probe_event = type { i32, %struct.probe_trace_event* }
%struct.probe_trace_event = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Internal error: prologue type %d not found\0A\00", align 1
@BPF_LOADER_ERRNO__PROLOGUE = common dso_local global i32 0, align 4
@BPF_MAXINSNS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to generate prologue for program %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Internal error in preproc_gen_prologue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*, i32, %struct.bpf_insn*, i32, %struct.bpf_prog_prep_result*)* @preproc_gen_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preproc_gen_prologue(%struct.bpf_program* %0, i32 %1, %struct.bpf_insn* %2, i32 %3, %struct.bpf_prog_prep_result* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_program*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_insn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_prog_prep_result*, align 8
  %12 = alloca %struct.bpf_prog_priv*, align 8
  %13 = alloca %struct.probe_trace_event*, align 8
  %14 = alloca %struct.perf_probe_event*, align 8
  %15 = alloca %struct.bpf_insn*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.bpf_program* %0, %struct.bpf_program** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bpf_insn* %2, %struct.bpf_insn** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.bpf_prog_prep_result* %4, %struct.bpf_prog_prep_result** %11, align 8
  %20 = load %struct.bpf_program*, %struct.bpf_program** %7, align 8
  %21 = call %struct.bpf_prog_priv* @bpf_program__priv(%struct.bpf_program* %20)
  store %struct.bpf_prog_priv* %21, %struct.bpf_prog_priv** %12, align 8
  store i64 0, i64* %16, align 8
  %22 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %12, align 8
  %23 = call i64 @IS_ERR(%struct.bpf_prog_priv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %5
  %26 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %12, align 8
  %27 = icmp ne %struct.bpf_prog_priv* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %12, align 8
  %30 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %25, %5
  br label %134

34:                                               ; preds = %28
  %35 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %12, align 8
  %36 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %35, i32 0, i32 3
  store %struct.perf_probe_event* %36, %struct.perf_probe_event** %14, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %12, align 8
  %42 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %34
  br label %134

46:                                               ; preds = %39
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.perf_probe_event*, %struct.perf_probe_event** %14, align 8
  %50 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %12, align 8
  %55 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %47

68:                                               ; preds = %63, %47
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.perf_probe_event*, %struct.perf_probe_event** %14, align 8
  %71 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @BPF_LOADER_ERRNO__PROLOGUE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %138

79:                                               ; preds = %68
  %80 = load %struct.perf_probe_event*, %struct.perf_probe_event** %14, align 8
  %81 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %80, i32 0, i32 1
  %82 = load %struct.probe_trace_event*, %struct.probe_trace_event** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %82, i64 %84
  store %struct.probe_trace_event* %85, %struct.probe_trace_event** %13, align 8
  %86 = load %struct.bpf_prog_priv*, %struct.bpf_prog_priv** %12, align 8
  %87 = getelementptr inbounds %struct.bpf_prog_priv, %struct.bpf_prog_priv* %86, i32 0, i32 2
  %88 = load %struct.bpf_insn*, %struct.bpf_insn** %87, align 8
  store %struct.bpf_insn* %88, %struct.bpf_insn** %15, align 8
  %89 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %90 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.probe_trace_event*, %struct.probe_trace_event** %13, align 8
  %93 = getelementptr inbounds %struct.probe_trace_event, %struct.probe_trace_event* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %96 = load i64, i64* @BPF_MAXINSNS, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %96, %98
  %100 = call i32 @bpf__gen_prologue(i32 %91, i32 %94, %struct.bpf_insn* %95, i64* %16, i64 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %79
  %104 = load %struct.bpf_program*, %struct.bpf_program** %7, align 8
  %105 = call i8* @bpf_program__title(%struct.bpf_program* %104, i32 0)
  store i8* %105, i8** %19, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %109

109:                                              ; preds = %108, %103
  %110 = load i8*, i8** %19, align 8
  %111 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* %18, align 4
  store i32 %112, i32* %6, align 4
  br label %138

113:                                              ; preds = %79
  %114 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %114, i64 %115
  %117 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memcpy(%struct.bpf_insn* %116, %struct.bpf_insn* %117, i32 %121)
  %123 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  %124 = load %struct.bpf_prog_prep_result*, %struct.bpf_prog_prep_result** %11, align 8
  %125 = getelementptr inbounds %struct.bpf_prog_prep_result, %struct.bpf_prog_prep_result* %124, i32 0, i32 2
  store %struct.bpf_insn* %123, %struct.bpf_insn** %125, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = add i64 %126, %128
  %130 = load %struct.bpf_prog_prep_result*, %struct.bpf_prog_prep_result** %11, align 8
  %131 = getelementptr inbounds %struct.bpf_prog_prep_result, %struct.bpf_prog_prep_result* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.bpf_prog_prep_result*, %struct.bpf_prog_prep_result** %11, align 8
  %133 = getelementptr inbounds %struct.bpf_prog_prep_result, %struct.bpf_prog_prep_result* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  store i32 0, i32* %6, align 4
  br label %138

134:                                              ; preds = %45, %33
  %135 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i32, i32* @BPF_LOADER_ERRNO__PROLOGUE, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %134, %113, %109, %74
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local %struct.bpf_prog_priv* @bpf_program__priv(%struct.bpf_program*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog_priv*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @bpf__gen_prologue(i32, i32, %struct.bpf_insn*, i64*, i64) #1

declare dso_local i8* @bpf_program__title(%struct.bpf_program*, i32) #1

declare dso_local i32 @memcpy(%struct.bpf_insn*, %struct.bpf_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
